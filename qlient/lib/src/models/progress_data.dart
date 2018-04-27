/// This file was autogenerated

library progress_data;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'progress_message.dart';
part 'progress_data.g.dart';

abstract class ProgressData implements Built<ProgressData, ProgressDataBuilder> {

 static Serializer<ProgressData> get serializer => _$progressDataSerializer;

  /// True if the request is started.
  /// Original name: qStarted
  @nullable
  bool get started;

  /// True if the request is finished.
  /// Original name: qFinished
  @nullable
  bool get finished;

  /// This property is not used.
  /// Original name: qCompleted
  @nullable
  int get completed;

  /// This property is not used.
  /// Original name: qTotal
  @nullable
  int get total;

  /// This property is not used.
  /// Original name: qKB
  @nullable
  int get kB;

  /// Request duration in milliseconds.
  /// Original name: qMillisecs
  @nullable
  int get millisecs;

  /// True when the engine pauses the script execution and waits for a user interaction.
  /// Original name: qUserInteractionWanted
  @nullable
  bool get userInteractionWanted;

  /// A progress message is persistent when it informs about the start or end of a statement. For example, it can inform about the total number of lines fetched from a data source or tell that the app was saved. All persistent progress messages between two *GetProgress* calls are summarized in this string. Contrarily to *qPersistentProgressMessages*, the content of the localized message string is displayed (not its message code).
  /// Original name: qPersistentProgress
  @nullable
  String get persistentProgress;

  /// A progress message is transient when it informs about the progress of an ongoing statement. For example, it can tell how many lines are currently fetched from a data source. All transient progress messages between two *GetProgress* calls are summarized in this string. Contrarily to *qTransientProgressMessage*, the content of the localized message string is displayed (not its message code).
  /// Original name: qTransientProgress
  @nullable
  String get transientProgress;

  /// Information about the error messages that occur during the script execution.
  /// Original name: qErrorData
  @nullable
  BuiltList<NxCell> get errorData;

  /// List of persistent progress messages.
  /// Original name: qPersistentProgressMessages
  @nullable
  BuiltList<NxCell> get persistentProgressMessages;

  /// Transient progress message.
  /// Original name: qTransientProgressMessage
  @nullable
  ProgressMessage get transientProgressMessage;

  factory ProgressData([updates(ProgressDataBuilder b)]) = _$ProgressData;

  factory ProgressData.init({bool started, bool finished, int completed, int total, int kB, int millisecs, bool userInteractionWanted, String persistentProgress, String transientProgress, BuiltList<NxCell> errorData, BuiltList<NxCell> persistentProgressMessages, ProgressMessage transientProgressMessage}) = _$ProgressData._;

  ProgressData._();
}
