import 'models.dart';
import 'source_file_data.dart';
import 'dart:convert';
import 'dart:io';
import 'package:recase/recase.dart';
import 'json_serializer.dart';

class ApiGenerator {
  var typeMap = <String, TypeData>{};
  _addType(TypeData typeData) {
    typeMap[typeData.jsonType] = typeData;
  }
  var exportList = <String>[];
  initBasicTypes() {
    _addType(new TypeData(jsonType: 'string', dartType: 'String'));
    _addType(new TypeData(jsonType: 'boolean', dartType: 'bool'));
    _addType(new TypeData(jsonType: 'number', dartType: 'num'));
    _addType(new TypeData(jsonType: 'integer', dartType: 'int'));
    _addType(new TypeData(jsonType: 'Function', dartType: 'ScriptFunction')
      ..importDirectives.add("import 'models/script_function.dart';"));
    _addType(new TypeData(jsonType: 'NxMetaDef', dartType: 'JsonObject')
      ..importDirectives.add("import 'package:built_value/json_object.dart';"));
    _addType(new TypeData(jsonType: 'JsonObject', dartType: 'JsonObject')
      ..importDirectives.add("import 'package:built_value/json_object.dart';"));
  }

  run() {
    initBasicTypes();
    var schemaContent = new File('tool/schema.json').readAsStringSync();
    var schemaJson = json.decode(schemaContent);
    var schema = fromJson<Schema>(Schema, schemaJson);
    populateTypes(schema);
    schema.definitions.forEach((key, value) {
      generateStruct(key, value);
    });
    generateModelExport();
    schema.services.forEach((key, value) {
      generateService(key, value);
      // throw 'asdfasdf';
    });
  }

  populateTypes(Schema schema) {
    schema.definitions.forEach((key, value) {
      if (value.jsonType == 'object' && value.properties.isNotEmpty) {
        var typeData = new TypeData();
        typeData.jsonType = key;
        typeData.dartType = key;
        var importDirective = "import '${getModelFileName(key)}';";
        typeData.importDirectives.add(importDirective);
        typeMap[typeData.jsonType] = typeData;
      }
    });
    schema.definitions.forEach((key, value) {
      if (value.jsonType == 'array') {
        var typeData = getTypeData(value) ;
        typeMap[typeData.jsonType] = typeData;
      }
    });
  }



  String getModelFileName(String className) =>
      new ReCase(className).snakeCase + '.dart';

  addComment(String description, StringBuffer buffer, String indent) {
    if (description == null) {
      return;
    }
    var lines = description.split('\n');
    for (var line in lines) {
      buffer.writeln('$indent/// $line');
    }
  }

  generateModelExport() {
    var outFile = new File('../qlient/lib/src/models.dart');
    outFile.createSync();
    var buffer = new StringBuffer();
    for (var each in exportList) {
      buffer.writeln("export 'models/${getModelFileName(each)}';");
    }
    outFile.writeAsStringSync(buffer.toString());
  }

  TypeData getTypeData(SchemaType schemaType) {
    var result = typeMap[schemaType.jsonType];
    if (result != null) {
      return result;
    }
    result = new TypeData();
    result.jsonType = schemaType.jsonType;
    if (schemaType.schema != null) {
      var jsonType = schemaType.schema.ref.replaceFirst('#/definitions/', '');
      return typeMap[jsonType];
    }
    if (schemaType.ref != null) {
      var jsonType = schemaType.ref.replaceFirst('#/definitions/', '');
      return typeMap[jsonType];
    }
    if (schemaType.jsonType == 'array') {
      var jsonType = schemaType.items.jsonType;
      if (jsonType == null) {
        var ref = schemaType.items.ref;
        if (ref == null) {
          print('Error: $schemaType');
          return null;
        }
        jsonType = ref.replaceFirst('#/definitions/', '');
      }
      var dataType = typeMap[jsonType];
      if (dataType == null) {
        print('Error: $jsonType $schemaType');
        return null;
      }
      result.dartType = 'List<${dataType.dartType}>';
      result.importDirectives.addAll(dataType.importDirectives);
      return result;
    }
    return null;
  }

  var _qPattern = new RegExp('^q');
  generateField(String jsonFieldName, SchemaType fieldContent,
      StringBuffer buffer, Set<String> importList) {
    addComment(fieldContent.description, buffer, '  ');
    addComment('Original name: $jsonFieldName', buffer, '  ');
    var dartType = 'NOT_FOUND';
    var typeData = getTypeData(fieldContent);
    if (typeData != null) {
      dartType = typeMap[typeData.jsonType]?.dartType;
      importList.addAll(typeData.importDirectives);
    }
    var fieldName = jsonFieldName.replaceFirst(_qPattern, '');
    fieldName = new ReCase(fieldName).camelCase;
    if (fieldName == 'num') {
      fieldName = 'qNum';
    }
    if (typeData == null) {
      print('Type not found for field $jsonFieldName $fieldContent');
    }
    buffer.writeln('  $dartType $fieldName;');
  }
  generateStruct(String className, SchemaType content) {
    if (content.jsonType == 'enum'){
      /// Probably we should generate EnumLike classes here ?
      return;
    }
    if (className == 'Function') {
      className = 'ScriptsFunction';
    }
    exportList.add(className);
    String fileName = getModelFileName(className);
    var buffer = new StringBuffer();
    addComment(content.description, buffer, '');
    buffer.writeln('class $className {');
    var properties = content.properties;
    if (properties == null) {
      return;
    }
    var importList = new Set<String>();
    properties.forEach((fieldName, content) {
      generateField(fieldName, content, buffer, importList);
    });
    buffer.writeln('}');
    var outFile = new File('../qlient/lib/src/models/$fileName');
    outFile.createSync();
    var importDirectives = importList.join('\n');
    var fileContent = '''
/// This code was autogenerated
//import 'package:built_value/built_value.dart';
$importDirectives

$buffer
''';
    outFile.writeAsStringSync(fileContent);
  }
  generateMethod(String methodName, Method method,
      StringBuffer buffer) {
    addComment(method.description, buffer, '  ');
    var dartMethodName = new ReCase(methodName).camelCase;    
    // var dartType = 'NOT_FOUND';
    // // var typeData = getTypeData(fieldContent);
    // if (typeData != null) {
    //   dartType = typeMap[typeData.jsonType]?.dartType;
    // }
    // var fieldName = methodName.replaceFirst(_qPattern, '');
    // fieldName = new ReCase(fieldName).camelCase;
    // if (fieldName == 'num') {
    //   fieldName = 'qNum';
    // }
    // if (typeData == null) {
    //   print('Type not found for field $methodName $fieldContent');
    // }
    var params = method.parameters.map((schemaType) {
      var typeData = getTypeData(schemaType);
      return '${typeData?.dartType} ${schemaType.name}';
    });
    buffer.writeln('  $dartMethodName(${params.join(', ')}) {}');
  }
  generateService(String className, Service service) {
    String fileName = getModelFileName(className);
    var buffer = new StringBuffer();
    buffer.writeln("import '../models.dart';");
    addComment(service.description, buffer, '');
    buffer.writeln('class $className {');
    service.methods.forEach((methodName, content) {
      generateMethod(methodName, content, buffer);
    });
    buffer.writeln('}');
    var outFile = new File('../qlient/lib/src/services/$fileName');
    outFile.createSync();
    // var importDirectives = importList.join('\n');
//     var fileContent = '''
// /// This code was autogenerated
// //import 'package:built_value/built_value.dart';
// $importDirectives

// $buffer
// ''';
    outFile.writeAsStringSync(buffer.toString());
  }
}
