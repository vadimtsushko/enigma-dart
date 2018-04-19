/// This code was autogenerated
import 'package:built_value/built_value.dart';


class DriveInfo {
  /// Value of the drive.
  /// Examples:
  /// C:\\\, E:\\\
  String drive;
  /// Type of the drive.
  /// _Fixed_ means physical drive.
  String type;
  /// Name of the drive.
  String name;
  /// Information about the drive type.
  /// 
  /// One of:
  /// * REMOVABLE
  /// * FIXED
  /// * NETWORK
  /// * CD_ROM
  /// * RAM
  /// * UNKNOWN_TYPE
  String typeIdentifier;
  bool unnamedDrive;
}

