import '../models.dart';
class Global {
  abortRequest(int qRequestId) {}
  /// Sets an abort flag on all pending and ongoing requests in the current engine session.
  /// * If an abort flag is set on a pending request, the request is aborted.
  /// * If an abort flag is set on an ongoing request, the engine checks to see if it is possible to abort the request.
  abortAll() {}
  /// Gives information about the progress of the _DoReload_ and _DoSave_ calls.
  /// <div class=note>For more information on DoReload and DoSave, see the _DoReload Method_ and _DoSave Method_. </div>
  getProgress(int qRequestId) {}
  /// Returns the Qlik Sense version number.
  qvVersion() {}
  /// Returns the version number of the operating system.
  oSVersion() {}
  /// Returns the name of the operating system.
  oSName() {}
  /// Returns the Qlik product name.
  qTProduct() {}
  /// Returns the list of apps.
  /// 
  /// **In Qlik Sense Enterprise:**
  /// 
  /// The list is generated by the QRS. The GetDocList method only returns documents the current user is allowed to access.
  /// 
  /// **In Qlik Sense Desktop:**
  /// 
  /// The apps are located in _C:\Users\&lt;user name&gt;\Documents\Qlik\Sense\Apps_.
  getDocList() {}
  /// Retrieves information on the user interaction that is requested by the engine.
  /// Engine can request user interactions only during script reload and when the reload is performed in debug mode ( _qDebug_ is set to true when using the _DoReload method_ ).
  /// When running reload in debug mode, the engine pauses the script execution to receive data about user interaction. The engine can pause:
  /// * Before executing a new script statement.
  /// * When an error occurs while executing the script.
  /// * When the script execution is finished.
  /// 
  /// To know if the engine is paused and waits for a response to an interaction request, the _GetProgress method_ should be used. The engine waits for a response if the property _qUserInteractionWanted_ is set to true in the response of the _GetProgress_ request.
  getInteract(int qRequestId) {}
  /// Informs the engine that a user interaction (which was earlier requested by the engine) was performed and indicates to the engine what to do next.
  interactDone(int qRequestId, InteractDef qDef) {}
  /// Retrieves information about the authenticated user.
  getAuthenticatedUser() {}
  /// Creates an app and opens an engine session.
  /// <div class=note>This operation is possible only in Qlik Sense Desktop.</div>
  createDocEx(String qDocName, String qUserName, String qPassword, String qSerial, String qLocalizedScriptMainSection) {}
  /// Returns the handle of the current app.
  getActiveDoc() {}
  /// Indicates whether or not a user is able to create an app.
  allowCreateApp() {}
  /// Creates an app.
  /// 
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  /// 
  /// ### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td>&lt; MachineName&gt;AuditActivity<i>Engine.txt in Qlik Sense Enterprise &lt; MachineName&gt;AuditActivityEngine.log in Qlik Sense Desktop</td>
  /// <td>&lt; MachineName&gt;ServiceEngine.txt in Qlik Sense Enterprise&lt; MachineName&gt;ServiceEngine.log in Qlik Sense Desktop</td>
  /// </tr>
  /// </table>
  /// 
  /// ### Where to find the log files
  /// The location of the log files depends on whether you have installed Qlik Sense Enterprise or Qlik Sense Desktop.
  /// <table>
  /// <tr>
  /// <th>Qlik Sense Enterprise </th>
  /// <th>Qlik Sense Desktop </th>
  /// </tr>
  /// <tr>
  /// <td>%ProgramData%/Qlik/Sense/Log/Engine</td>
  /// <td>%UserProfile%/Documents/Qlik/Sense/Log</td>
  /// </tr>
  /// </table>
  createApp(String qAppName, String qLocalizedScriptMainSection) {}
  /// Deletes an app from the Qlik Sense repository or from the file system.
  /// 
  /// #### Qlik Sense Enterprise
  /// In addition to being removed from the repository, the app is removed from the directory as well:
  /// *&lt;installation_directory&gt;\Qlik\Sense\Apps*
  /// The default installation directory is _ProgramData_.
  /// 
  /// #### Qlik Sense Desktop
  /// The app is deleted from the directory _%userprofile%\Documents\Qlik\ \Apps_.
  /// 
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  /// 
  /// #### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td>&lt;MachineName&gt;AuditActivityEngine.txt in Qlik Sense Enterprise &lt;MachineName&gt;AuditActivityEngine.log in Qlik Sense Desktop</td>
  /// <td>&lt;MachineName&gt;ServiceEngine.txt in Qlik Sense Enterprise &lt;MachineName&gt;ServiceEngine.log in Qlik Sense Desktop</td>
  /// </tr>
  /// </table>
  /// 
  /// #### Where to find the log files
  /// The location of the log files depends on whether you have installed Qlik Sense Enterprise or Qlik Sense Desktop.
  /// <table>
  /// <tr>
  /// <th>Qlik Sense Enterprise </th>
  /// <th>Qlik Sense Desktop </th>
  /// </tr>
  /// <tr>
  /// <td>%ProgramData%/Qlik/Sense/Log/Engine</td>
  /// <td>%UserProfile%/Documents/Qlik/Sense/Log</td>
  /// </tr>
  /// </table>
  deleteApp(String qAppId) {}
  /// Indicates whether the user is working in Qlik Sense Desktop.
  isDesktopMode() {}
  /// Cancels an ongoing request. The request is stopped.
  cancelRequest(int qRequestId) {}
  /// Shuts down the Qlik engine.
  /// <div class=note>This operation is possible only in Qlik Sense Desktop.</div>
  shutdownProcess() {}
  /// Reloads the list of extensions.
  reloadExtensionList() {}
  /// Replaces objects of a target app with the objects from a source app.
  /// The list of objects in the app to be replaced must be defined in _qIds_.
  /// <div class=note>The data model of the app cannot be updated. </div> <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  /// 
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  replaceAppFromID(String qTargetAppId, String qSrcAppID, List<NxCell> qIds) {}
  /// Copies an app that is in the Qlik Sense repository.
  /// The engine copies the app into an app entity that was previously created by the repository. See the [Qlik Sense Repository Service API](#csh-RepositoryServiceAPI-Introduction) for more information.
  /// <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  copyApp(String qTargetAppId, String qSrcAppId, List<NxCell> qIds) {}
  /// Exports an app from the Qlik Sense repository to the file system.
  /// <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  /// 
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  /// 
  /// #### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td>*&lt;MachineName&gt;_AuditActivityEngine.txt*</td>
  /// <td>*&lt;MachineName&gt;_ServiceEngine.txt*</td>
  /// </tr>
  /// </table>
  /// 
  /// The log files are located in:
  /// _%ProgramData%/Qlik/Sense/Log/Engine_
  exportApp(String qTargetPath, String qSrcAppId, List<NxCell> qIds, bool qNoData) {}
  /// Publishes an app to the supplied stream.
  publishApp(String qAppId, String qName, String qStreamId) {}
  /// Indicates whether or not the user is working in personal mode (Qlik Sense Desktop).
  isPersonalMode() {}
  /// Returns the unique identifier of the endpoint for the current user in the current app.
  /// <div class=note>This unique identifier can be used for logging purposes.</div>
  getUniqueID() {}
  /// Opens an app and checks if the app needs to be migrated (if the app is deprecated).
  /// The _OpenDoc method_ compares the version of the app with the version of Qlik Sense and migrates the app to the current version of Qlik Sense if necessary. Once the migration is done, the app is opened.
  /// If no migration is needed, the app is opened immediately.
  /// The following applies:
  /// * The app version is lower than 0.95: no migration is done. Apps older than the version 0.95 are not supported.
  /// * The app version is at least 0.95 and less than the Qlik Sense version: the app is migrated and then opened.
  /// * Qlik Sense and the app have the same version: the app is opened, no migration is needed.
  /// 
  /// <div class=note>If the app is read-only, the app migration cannot occur. An error message is sent.</div>
  /// 
  /// #### Backups
  /// In Qlik Sense Desktop, apps are automatically backed up before a migration.
  /// The backup files are located in _%userprofile%\Documents\Qlik\Sense\AppsBackup\&lt;Qlik Sense Desktop version&gt;_.
  /// In Qlik Sense Enterprise, no automatic back up is run. The back up should be done manually.
  openDoc(String qDocName, String qUserName, String qPassword, String qSerial, bool qNoData) {}
  /// Creates an empty session app.
  /// The following applies:
  /// * The name of a session app cannot be chosen. The engine automatically assigns a unique identifier to the session app.
  /// * A session app is not persisted and cannot be saved. Everything created during a session app is non-persisted; for example: objects, data connections.
  createSessionApp() {}
  /// Creates a session app from a source app.
  /// The following applies:
  /// * The objects in the source app are copied into the session app but contain no data.
  /// * The script of the session app can be edited and reloaded.
  /// * The name of a session app cannot be chosen. The engine automatically assigns a unique identifier to the session app.
  /// * A session app is not persisted and cannot be saved. Everything created during a session app is non-persisted; for example: objects, data connections.
  createSessionAppFromApp(String qSrcAppId) {}
  /// Returns the Qlik Sense version number.
  productVersion() {}
  /// Retrieves the meta data of an app.
  getAppEntry(String qAppID) {}
  /// Configures the engine's behavior during a reload.
  /// <div class=note>The _ConfigureReload method_ should be run before the _DoReload method_. </div>
  configureReload(bool qCancelOnScriptError, bool qUseErrorData, bool qInteractOnError) {}
  /// Cancels an ongoing reload. The reload of the app is stopped. The indexation can be canceled and _true_ is still the return value of the reload task.
  cancelReload() {}
  /// Gets the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language. The BNF rules define the syntax for the script statements and the script or chart functions.
  /// In the Qlik engine BNF grammar, a token is a string of one or more characters that is significant as a group. For example, a token could be a function name, a number, a letter, a parenthesis, and so on.
  getBNF(String qBnfType) {}
  /// Gets the list of all the script functions.
  getFunctions(String qGroup) {}
  /// Returns the list of the ODBC connectors that are installed in the system.
  getOdbcDsns() {}
  /// Returns the list of the OLEDB providers installed on the system.
  getOleDbProviders() {}
  /// Lists the databases in a ODBC, OLEDB or CUSTOM data source.
  getDatabasesFromConnectionString(Connection qConnection) {}
  /// Checks if a connection string is valid.
  isValidConnectionString(Connection qConnection) {}
  /// Returns the folder where the apps are stored.
  /// <div class=note>This method applies only if running Qlik Sense Desktop.</div>
  getDefaultAppFolder() {}
  /// Lists the logical drives in the system.
  /// <div class=note>This method applies only if running Qlik Sense Desktop.</div>
  getLogicalDriveStrings() {}
  /// Returns the files and folders located at a specified path.
  getFolderItemsForPath(String qPath) {}
  /// Lists the supported code pages.
  getSupportedCodePages() {}
  /// List the custom connectors available in the system.
  getCustomConnectors(bool qReloadList) {}
  /// Lists the streams.
  getStreamList() {}
  /// Returns the version number of the Qlik engine component.
  engineVersion() {}
  /// Gets the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language, as well as a string hash calculated from that grammar. The BNF rules define the syntax for the script statements and the script or chart functions. If the hash changes between subsequent calls to this method, this indicates that the BNF has changed.
  /// In the Qlik engine grammars, a token is a string of one or more characters that is significant as a group. For example, a token could be a function name, a number, a letter, a parenthesis, and so on.
  getBaseBNF(String qBnfType) {}
  /// Gets a string hash calculated from the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language. If the hash changes between subsequent calls to this method, this indicates that the BNF grammar has changed.
  getBaseBNFHash(String qBnfType) {}
  /// Gets the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language, as well as a string hash calculated from that grammar. The BNF rules define the syntax for the script statements and the script or chart functions. If the hash changes between subsequent calls to this method, this indicates that the BNF has changed.
  /// In the Qlik engine grammars, a token is a string of one or more characters that is significant as a group. For example, a token could be a function name, a number, a letter, a parenthesis, and so on.
  getBaseBNFString(String qBnfType) {}
}
