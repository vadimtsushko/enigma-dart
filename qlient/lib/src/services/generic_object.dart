import '../models.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at generic object level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the generic object.
class GenericObject {
  /// Evaluates an object and displays its properties including the dynamic properties.
  /// If the member _delta_ is set to true in the request object, only the delta is evaluated. A _GetLayout_ call on a generic object, returns up to one level down in the hierarchy.
  ///
  /// ### Example:
  /// _A_ is a generic object and is the parent of the objects B and C. _B_ is the parent of the objects D and E.
  /// <br>![](images/dr_gen_QVCPMethodGetLayoutHierarchy.png)<br>
  /// A _GetLayout_ call on A returns information on the objects A, B and C.
  /// A _GetLayout_ call on B returns information on the objects B, D and E.
  /// A  _GetLayout_ call on C returns information on the object C.
  ///
  /// <div class=note>
  /// In addition to the parameters displayed above, the **GetLayout** method can return other properties according to what is defined in the generic object.
  /// For example, if **qHyperCubeDef** is defined in the generic object, the **GetLayout** method returns the properties described in _HyperCube_.
  /// </div>
  GenericObjectLayout getLayout() {}

  /// Retrieves the values of a list object.
  /// A data set is returned.
  BuiltList<NxCell> getListObjectData(String qPath, BuiltList<NxCell> qPages) {}

  /// Retrieves the calculated data for a chart, a table, or a scatter plot. It is possible to retrieve specific pages of data.
  /// <div class=note>This method works for a hypercube in DATA_MODE_STRAIGHT.</div>
  /// A data set is returned.
  BuiltList<NxCell> getHyperCubeData(String qPath, BuiltList<NxCell> qPages) {}

  /// Reduces the data of a bar chart, a line chart or a scatter plot chart and retrieves them.
  /// The reduction is dependent on the zoom factor (parameter _qZoomFactor_ ) and on the reduction mode.
  /// <div class=note>This method can be used to create mini charts.</div>
  ///
  /// ### Bar chart or line chart data reduction
  /// For the data reduction to happen, the following conditions must be fulfilled:
  /// * The values cannot fit in the defined page (parameter _qPages_ ).
  /// * The zoom factor is not 0 (parameter _qZoomFactor_ ).
  /// * The reduction mode must be set to D1.
  ///
  /// The reduction algorithm keeps the shape of the visualizations and works whatever the number of dimensions in the chart. The global profile of the chart is reduced, and not only a specific dimension. A visualization that has been reduced contains fewer values but its shape is the same. Data of all types can be reduced. Therefore it is hard to relate the values before and after a reduction especially when reducing string values.
  ///
  /// ### Example
  /// If you have a chart with 1 million data, and you have set the zoom factor to 5, the _GetHyperCubeReducedData_ method reduces the chart and retrieves 200 000 data.
  ///
  /// ### Scatter plot chart data reduction
  /// The reduction mode must be set to C.
  /// This reduction mechanism follows the 2D K-Means algorithm. Data are reduced into a number of clusters. Each data is assigned to a specific centroid.
  /// The number of centroids can be defined in the parameter _qZoomFactor_.
  ///
  /// ### Scatter plot chart resolution reduction
  /// The reduction mode must be set to S.
  /// The resolution is reduced according to the zoom factor (parameter _qZoomFactor_ ).
  ///
  /// ### Example
  /// If you have a scatter plot chart and the zoom factor is set to 2, the scatter plot chart resolution is reduced by 4.
  BuiltList<NxCell> getHyperCubeReducedData(String qPath,
      BuiltList<NxCell> qPages, int qZoomFactor, String qReductionMode) {}

  /// Retrieves the values of a pivot table. It is possible to retrieve specific pages of data.
  /// <div class=note>This method works for a hypercube in DATA_MODE_PIVOT.</div>
  BuiltList<NxCell> getHyperCubePivotData(
      String qPath, BuiltList<NxCell> qPages) {}

  /// Retrieves the values of a stacked pivot table. It is possible to retrieve specific pages of data.
  /// <div class=note>This method works for a hypercube in DATA_MODE_PIVOT_STACK.</div>
  BuiltList<NxCell> getHyperCubeStackData(
      String qPath, BuiltList<NxCell> qPages, int qMaxNbrCells) {}

  /// Retrieves and packs compressed hypercube and axis data. It is possible to retrieve specific pages of data.
  /// <div class=note>Binning is done on the time stamp data as well as the date. This means that you can zoom in to a level of granularity as low as seconds.</div>
  BuiltList<NxCell> getHyperCubeContinuousData(
      String qPath, NxContinuousDataOptions qOptions, bool qReverseSort) {}

  /// Retrieves data for nodes in a tree structure. It is possible to retrieve specific pages of data.
  /// <div class=note>This method works for a treedata object or a hypercube in DATA_MODE_TREE.</div>
  BuiltList<NxCell> getHyperCubeTreeData(
      String qPath, NxTreeDataOption qNodeOptions) {}

  /// This method supports data binning.
  /// When a generic object with two or three measures and one dimension contains a lot of data, groups of points (for example, cells) can be rendered instead of points.
  /// A zone of interest can be refined (for zooming in) up to a maximum refinement level (set in the _qQueryLevel_ parameter) or coarsened (for zoom out).
  /// The grid of cells is adaptive (not static), meaning that it adapts to different length scales.
  /// The _GetHyperCubeBinnedData_ method gives information about the adaptive grid and the values of the generic object.
  /// The number of points in a cell and the coordinates (expressed in the measure range) of each cell are returned.
  /// Dimension values and measure values are rendered at point level (highest detailed level).
  /// <div class=note>The generic object should contain two or three measures and one dimension. When the refinement is high, the first two measures are represented on the x-axis and on the y-axis, while the third measure is visualized as color or point size.</div>
  ///
  /// ### Adaptive Grid
  /// More details about the properties of the adaptive grid are given in this paragraph.
  /// When the refinement is not the highest (cells are rendered), information about the adaptive grid is returned through several arrays.
  /// The first array contains the following properties:
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qNum</td>
  /// <td>Maximum number of points that a cell can contain.</td>
  /// <td>String</td>
  /// </tr>
  /// <tr>
  /// <td>qElemNumber</td>
  /// <td>Is set to 0.</td>
  /// <td>Boolean</td>
  /// </tr>
  /// <tr>
  /// <td>qState</td>
  /// <td>The default value is L.</td>
  /// <td>One of:
  /// <ul>
  /// <li>L for Locked</li>
  /// <li>S for Selected</li>
  /// <li>O for Optional</li>
  /// <li>D for Deselected</li>
  /// <li>A for Alternative</li>
  /// <li>X for eXcluded</li>
  /// <li>XS for eXcluded Selected</li>
  /// <li>XL for eXcluded Locked</li>
  /// </ul>
  /// </td>
  /// </tr>
  /// </table>
  ///
  /// The next arrays give the coordinates of each cell in the page.
  /// Each array contains the following properties:
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qText</td>
  /// <td>Coordinates of a cell in the measure range.<br>“qText”: “[[&lt;left&gt;, &lt;top&gt;, &lt;right&gt;, &lt;bottom&gt;], [&lt;left&gt;, &lt;top&gt;, &lt;right&gt;, &lt;bottom&gt;], .... [&lt;left&gt;, &lt;top&gt;, &lt;right&gt;, &lt;bottom&gt;]]<br>Where:<br>&lt; <i>left</i> &gt;, <i>&lt; top</i> &gt;, &lt; <i>right</i> &gt; and &lt; <i>bottom</i> &gt; are the coordinates of the cell in the measure range.</td>
  /// <td>String</td>
  /// </tr>
  /// <tr>
  /// <td>qNum</td>
  /// <td>Number of points in the cell.</td>
  /// <td>Double precision floating point</td>
  /// </tr>
  /// <tr>
  /// <td>qElemNumber</td>
  /// <td>Unique identifier for each cell, calculated by the engine during the construction of the grid.<br>This element number is not stored in the database and can have a positive or a negative value.</td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qState</td>
  /// <td>The default value is L.</td>
  /// <td>One of:
  /// <ul>
  /// <li>L for Locked</li>
  /// <li>S for Selected</li>
  /// <li>O for Optional</li>
  /// <li>D for Deselected</li>
  /// <li>A for Alternative</li>
  /// <li>X for eXcluded</li>
  /// <li>XS for eXcluded Selected</li>
  /// <li>XL for eXcluded Locked</li>
  /// </ul>
  /// </td>
  /// </tr>
  /// </table>
  ///
  /// <div class=note>Cells are represented as rectangles.</div>
  ///
  /// ### Dimension values and measures values
  /// More details about the properties, when dimension and measure values are returned, are given in this paragraph.
  /// When the refinement is high, points are rendered (not cells) and dimension and measure values for each cell are returned.
  /// The first array is empty because no information on the adaptive grid is needed.
  /// The next arrays bring information about the dimension and the measure values.
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qText</td>
  /// <td>Text value of the dimension or the measure.</td>
  /// <td>String</td>
  /// </tr>
  /// <tr>
  /// <td>qNum</td>
  /// <td>Numerical value of the dimension or the measure.<br>Is set to 0 if the value is only text.</td>
  /// <td>Double precision floating point</td>
  /// </tr>
  /// <tr>
  /// <td>qElemNumber</td>
  /// <td>Unique identifier for each cell, calculated by the engine during the construction of the grid.<br>This element number is not stored in the database and can have a positive or a negative value.</td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qState</td>
  /// <td>The default value is L.</td>
  /// <td>One of:
  /// <ul>
  /// <li>L for Locked</li>
  /// <li>S for Selected</li>
  /// <li>O for Optional</li>
  /// <li>D for Deselected</li>
  /// <li>A for Alternative</li>
  /// <li>X for eXcluded</li>
  /// <li>XS for eXcluded Selected</li>
  /// <li>XL for eXcluded Locked</li>
  /// </ul>
  /// </td>
  /// </tr>
  /// </table>
  BuiltList<NxCell> getHyperCubeBinnedData(
      String qPath,
      BuiltList<NxCell> qPages,
      NxViewPort qViewport,
      BuiltList<NxCell> qDataRanges,
      int qMaxNbrCells,
      int qQueryLevel,
      int qBinningMethod) {}

  /// Applies a patch to the properties of an object. Allows an update to some of the properties.
  /// It is possible to apply a patch to the properties of a generic object, that is not persistent. Such a patch is called a soft patch.
  /// In that case, the result of the operation on the properties (add, remove or delete) is not shown when doing _GetProperties_ , and only a _GetLayout_ call shows the result of the operation.
  /// Properties that are not persistent are called soft properties. Once the engine session is over, soft properties are cleared.
  /// <div class=note>Soft properties apply only to generic objects.</div>
  applyPatches(BuiltList<NxCell> qPatches, bool qSoftPatch) {}

  /// Clears the soft properties of a generic object.
  /// For more information on how to add soft properties to a generic object, see _ApplyPatches Method_.
  clearSoftPatches() {}

  /// Sets some properties for a generic object.
  /// <div class=note>The properties depends on the generic object type, see [properties](genericobject-property.html).</div>
  setProperties(GenericObjectProperties qProp) {}

  /// Returns the identifier, the type and the properties of the object.
  /// Because it is not mandatory to set all properties when you define an object, the _GetProperties_ method may show properties that were not set. In that case, default values are given.
  /// If the object contains some soft properties, the soft properties are not returned by the _GetProperties_ method. Use the _GetEffectiveProperties method_ instead.
  /// If the object is linked to another object, the properties of the linking object are not returned by the _GetProperties_ method. Use the _GetEffectiveProperties method_ instead.
  /// <div class=note>The properties depends on the generic object type, see [properties](genericobject-layout.html).</div>
  /// <div class=note>If the member delta is set to true in the request object, only the delta is retrieved.</div>
  GenericObjectProperties getProperties() {}

  /// Returns the identifier, the type and the properties of the object.
  /// If the object contains some soft properties, the soft properties are returned.
  /// If the object is linked to another object, the properties of the linking object are returned.
  /// GetEffectiveProperties method
  /// Returns the identifier, the type and the properties of the object.
  /// If the object contains some soft properties, the soft properties are returned.
  /// If the object is linked to another object, the properties of the linking object are returned.
  GenericObjectProperties getEffectiveProperties() {}

  /// Sets the properties of:
  /// * A generic object.
  /// * The children of the generic object.
  /// * The bookmarks/embedded snapshots of the generic object.
  ///
  /// <div class=note>If the _SetFullPropertyTree method_ is asked to set some properties to a child that does not exist, it creates the child. </div> <div class=note>The type of an object cannot be updated.</div>
  setFullPropertyTree(GenericObjectEntry qPropEntry) {}

  /// Gets the properties of:
  /// * A generic object.
  /// * The children of the generic object.
  /// * The bookmarks/embedded snapshots of the generic object.
  GenericObjectEntry getFullPropertyTree() {}

  /// Returns the type and identifier of the object.
  NxInfo getInfo() {}

  /// Clears the selections in a dimension of a visualization.
  clearSelections(String qPath, BuiltList<NxCell> qColIndices) {}

  /// Exports the data of any generic object to an Excel file or a open XML file. If the object contains excluded values, those excluded values are not exported.
  /// This API has limited functionality and will not support CSV export from all types of objects. Consider using Excel export instead. Treemap and bar chart are not supported.
  ///
  /// ### Default limitations in number of rows and columns
  /// The default maximum number of rows and columns in the Excel export file is:
  /// * 1048566 rows per sheet. For pivot tables: 1048566 column dimensions. 10 rows can be added after the export.
  /// * 16384 columns per sheet. If the number of columns exceeds the limit, the exported file is truncated and a warning message is sent.
  ///
  /// ### Default limitations in number of cells
  /// The default maximum number of cells in the export file is:
  /// * 1000000 to export to an Excel file
  /// * 5000000 to export to a CSV file
  ///
  /// The exported file is truncated if the number of cells exceeds the limit. A warning message with code 1000 is sent.
  /// There is an option to export only the possible values ( _qExportState_ is P).
  ///
  /// ### Default limitation in number of columns
  /// The default maximum number of columns in the export file is:
  /// * 1000 to export to a CSV file
  ///
  /// The exported file is truncated if the number of cells exceeds the limit. A warning message with code 1000 is sent.
  /// <div class=note>There is an option to export only the possible values ( _qExportState_ is P). </div>
  ///
  /// ### Default limitation in size
  /// The default size limit of an export file is:
  /// * 1024*1024*800 for an export to an Excel file.
  ///
  /// If the exported file is larger than the maximum value, then an out-of-memory error with code 13000 is returned.
  ///
  /// <div class=note>Exported files are temporary and are available only for a certain time span and only to the user who created them.</div>
  String exportData(
      String qFileType, String qPath, String qFileName, String qExportState) {}

  /// Makes single selections in dimensions.
  /// <div class=note>This method applies to list objects only.</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectListObjectValues(String qPath, BuiltList<NxCell> qValues,
      bool qToggleMode, bool qSoftLock) {}

  /// Selects all possible values of a list object.
  /// <div class=note>This method applies to list objects (objects with one dimension).</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectListObjectPossible(String qPath, bool qSoftLock) {}

  /// Inverts the current selections in a specific field.
  /// <div class=note>This method applies to list objects (objects with one dimension).</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectListObjectExcluded(String qPath, bool qSoftLock) {}

  /// Selects all alternative values in a specific field.
  /// <div class=note>This method applies to list objects (objects with one dimension).</div> <div class=note>If a field contains at least one selected value, the values that are neither selected nor excluded are alternatives values.</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectListObjectAlternative(String qPath, bool qSoftLock) {}

  /// Selects all values of a field.
  /// <div class=note>This method applies to list objects (objects with one dimension).</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectListObjectAll(String qPath, bool qSoftLock) {}

  /// The following is returned in the output:
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool selectListObjectContinuousRange(
      String qPath, BuiltList<NxCell> qRanges, bool qSoftLock) {}

  /// Searches for a string in a list object.
  /// <div class=note>This method applies to list objects (objects with one dimension).</div> <div class=note>The search results can be displayed using the _GetLayout Method_. </div>
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool searchListObjectFor(String qPath, String qMatch) {}

  /// Aborts the results of a search in a list object.
  /// <div class=note>This method applies to list objects (objects with one dimension).</div> <div class=note> After an abort on a list object search, the _GetLayout Method_ does not return any more search results but it does return the values in the field. </div>
  abortListObjectSearch(String qPath) {}

  /// Accept the results of a search in a list object. The search results become selected in the field.
  /// <div class=note>This method applies to list objects (objects with one dimension).</div> <div class=note>The search results are displayed using the _GetLayout Method_. </div>
  acceptListObjectSearch(String qPath, bool qToggleMode, bool qSoftLock) {}

  /// Expands the left dimensions of a pivot table. This method applies only to pivot tables that are not always fully expanded.
  /// In the definition of the hypercube (in _HyperCubeDef_ ), the parameter _qAlwaysFullyExpanded_ must be set to false.
  expandLeft(String qPath, int qRow, int qCol, bool qAll) {}

  /// Expands the top dimensions of a pivot table. This method applies only to pivot tables that are not always fully expanded.
  /// In the definition of the hypercube (in _HyperCubeDef_ ), the parameter _qAlwaysFullyExpanded_ must be set to false.
  expandTop(String qPath, int qRow, int qCol, bool qAll) {}

  /// Collapses the left dimensions of a pivot table. This method applies only to pivot tables that are not always fully expanded.
  /// In the definition of the hypercube (in _HyperCubeDef_ ), the parameter _qAlwaysFullyExpanded_ must be set to false.
  collapseLeft(String qPath, int qRow, int qCol, bool qAll) {}

  /// Collapses the top dimensions of a pivot table. This method applies only to pivot tables that are not always fully expanded.
  /// In the definition of the hypercube (in _HyperCubeDef_ ), the parameter _qAlwaysFullyExpanded_ must be set to false.
  collapseTop(String qPath, int qRow, int qCol, bool qAll) {}

  /// You can use the drillUp method with any object that contains a drill-down group as a dimension.
  /// This method allows you to move between different levels of information (from a detailed level to a less detailed level of information). You can go back to previous visualizations up to the highest level of the hierarchy.
  /// If you try to drill up more steps than there are available levels, the first level of the hierarchy is displayed.
  drillUp(String qPath, int qDimNo, int qNbrSteps) {}

  /// Locks the selected values of a generic object.
  lock(String qPath, BuiltList<NxCell> qColIndices) {}

  /// Unlocks the selected values of a generic object if the target (or handle ) is a generic object
  unlock(String qPath, BuiltList<NxCell> qColIndices) {}

  /// Selects some values in one dimension.
  /// The values are identified by their element numbers.
  /// <div class=note>This method applies to charts, tables and scatter plots.</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectHyperCubeValues(
      String qPath, int qDimNo, BuiltList<NxCell> qValues, bool qToggleMode) {}

  /// Makes selections in multiple dimensions and measures.
  /// <div class=note> This method applies to hypercubes, such as bar charts, tables and scatter plots.</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectHyperCubeCells(
      String qPath,
      BuiltList<NxCell> qRowIndices,
      BuiltList<NxCell> qColIndices,
      bool qSoftLock,
      bool qDeselectOnlyOneSelected) {}

  /// <div class=note>This method only applies to hypercubes that are not represented as straight tables. The parameter _qMode_ in _HyperCubeDef_ must be set either to _P_  or _K_ . </div>
  ///
  /// ### Pivot table
  /// Makes selections in the top or left dimension cells of a pivot table or in the data matrix. Only expanded dimensions can be selected.
  ///
  /// ### Stacked table
  /// Makes selections in the left dimension cells of a stacked table or in the data matrix.
  /// <div class=note>There is no top dimensions in a stacked table. A stacked table can only contain one measure.</div>
  ///
  /// ### Example of a pivot table
  /// ![](images/ui_gen_ExampleQVCPPivotTableDescription.png)<br>
  /// In the representation above:
  /// <table>
  /// <tr>
  /// <td>Sum(OrderTotal)<br>Count(OrderTotal)</td>
  /// <td>Are pseudo dimensions.</td>
  /// </tr>
  /// <tr>
  /// <td>CategoryName</td>
  /// <td>Is a left dimension.<br><i>Beverages</i> , <i>Condiments</i> ... are left dimension values.</td>
  /// </tr>
  /// <tr>
  /// <td>ProductName</td>
  /// <td>Is a top dimension.<br><i>Chef Anton's Cajun Seasoning</i> is a top dimension value. </td>
  /// </tr>
  /// <tr>
  /// <td>Numeric values</td>
  /// <td>Are calculated values in the data matrix.<br><i>626291,832</i> is a calculated value.</td>
  /// </tr>
  /// </table>
  ///
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool selectPivotCells(String qPath, BuiltList<NxCell> qSelections,
      bool qSoftLock, bool qDeselectOnlyOneSelected) {}

  /// Make range selections in measures.
  /// <div class=note> This method applies to hypercubes. For example, bar charts, tables and scatter plots.</div>
  /// The member **Change** returns the handles of the objects that are updated following the selections.
  /// _qSuccess_ is set to _true_ if the selections are successful and is set to _false_ in the following cases:
  /// * The object contains some invalid fields (fields that are not in the data model).
  /// * The selection applies to a locked field.
  /// * A range selection is performed and the parameter _OneAndOnlyOne_ is set to true in the definition of the object.
  bool rangeSelectHyperCubeValues(
      String qPath,
      BuiltList<NxCell> qRanges,
      BuiltList<NxCell> qColumnsToSelect,
      bool qOrMode,
      bool qDeselectOnlyOneSelected) {}
  bool multiRangeSelectHyperCubeValues(String qPath, BuiltList<NxCell> qRanges,
      bool qOrMode, bool qDeselectOnlyOneSelected) {}
  bool multiRangeSelectTreeDataValues(String qPath, BuiltList<NxCell> qRanges,
      bool qOrMode, bool qDeselectOnlyOneSelected) {}

  /// The following is returned in the output:
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool selectHyperCubeContinuousRange(
      String qPath, BuiltList<NxCell> qRanges, bool qSoftLock) {}

  /// Returns the type of the object and the corresponding handle.
  ObjectInterface getChild(String qId) {}

  /// Returns the identifier and the type for each child in an app object. If the child contains extra properties in _qInfos_ , these properties are returned.
  ///
  /// Full dynamic properties are optional and are returned if they exist in the definition of the object.
  BuiltList<NxCell> getChildInfos() {}

  /// Creates a generic object that is a child of another generic object.
  /// <div class=note>It is possible to update the properties of the child's parent at the same time that the child is created. Both operations are performed by the same call.</div> <div class=note>It is possible to create a child that is linked to another generic object. The two objects have the same properties.</div>
  NxInfo createChild(
      GenericObjectProperties qProp, GenericObjectProperties qPropForThis) {}

  /// Removes a child object.
  /// <div class=note>It is possible to update the properties of the child's parent at the same time that the child is removed. Both operations are performed by the same call.</div> <div class=note>Removing a linked object, invalidate the linking object. </div>
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyChild(String qId, GenericObjectProperties qPropForThis) {}

  /// Removes all children and all children to the children on an object.
  destroyAllChildren(GenericObjectProperties qPropForThis) {}

  /// Sets the order of the children in a generic object.
  /// <div class=note>To change the order of the children in a generic object, the identifiers of all the children must be included in the list of the identifiers (in _qIds_ ). </div>
  setChildArrayOrder(BuiltList<NxCell> qIds) {}

  /// Lists the linked objects to a generic object, a dimension or a measure.
  BuiltList<NxCell> getLinkedObjects() {}

  /// Copies the properties of a generic object and its children.
  /// The source object is specified by the parameter _qFromId_ and the destination object is referenced by its handle.
  /// <div class=note>The identifier of the destination object is the same as before the copy takes place.</div>
  copyFrom(String qFromId) {}

  /// Begins the selection mode. The app enters the modal state. The specified object enters the selection mode and a modal window is opened. The selection mode can apply to only one object in an app at a time.
  /// When a visualization is in selection mode, selections can be made in this visualization. The visualization is not sorted until the selection mode is ended. Once the selection mode is ended and if the selections are accepted, the visualization is sorted according to the sort criteria. For more information about:
  /// * Ending the selection mode, see _EndSelections Method_.
  /// * The sort criteria, see _ListObjectDef_ or _HyperCubeDef_.
  ///
  /// ### Example
  /// A sheet contains a list object and a chart. If the list object is in selection mode then the chart cannot be in selection mode. No selection on the chart can be made until the list object exits the selection mode.
  beginSelections(BuiltList<NxCell> qPaths) {}

  /// Ends the selection mode on a visualization. The selections are accepted or aborted when exiting the selection mode, depending on the _qAccept_ parameter value.
  endSelections(bool qAccept) {}

  /// Resets all selections made in selection mode.
  resetMadeSelections() {}

  /// Adds a snapshot to a generic object.
  /// <div class=note>Only one snapshot can be embedded in a generic object.</div> <div class=note>If you embed a snapshot in an object that already contains a snapshot, the new snapshot overwrites the previous one.</div>
  embedSnapshotObject(String qId) {}

  /// Returns the type of the object and the corresponding handle.
  ObjectInterface getSnapshotObject() {}

  /// Publishes a generic object.
  /// <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  publish() {}

  /// Unpublishes a generic object.
  /// <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  unPublish() {}
}
