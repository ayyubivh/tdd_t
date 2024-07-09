// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginLocalModelAdapter extends TypeAdapter<LoginLocalModel> {
  @override
  final int typeId = 4;

  @override
  LoginLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginLocalModel(
      studentId: fields[0] as String,
      admissionNo: fields[1] as String,
      studentName: fields[2] as String,
      compId: fields[3] as String,
      roleId: fields[4] as String,
      activeStatus: fields[5] as String,
      pwdChangeStatus: fields[6] as String?,
      profilePhoto: fields[7] as String,
      eMail: fields[8] as String,
      mobile: fields[9] as String,
      parentId: fields[10] as String,
      academicId: fields[11] as String,
      academicYear: fields[12] as String?,
      usrId: fields[13] as String,
      divisionId: fields[14] as String,
      classId: fields[15] as String,
      medium: fields[16] as String,
      userType: fields[17] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LoginLocalModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.studentId)
      ..writeByte(1)
      ..write(obj.admissionNo)
      ..writeByte(2)
      ..write(obj.studentName)
      ..writeByte(3)
      ..write(obj.compId)
      ..writeByte(4)
      ..write(obj.roleId)
      ..writeByte(5)
      ..write(obj.activeStatus)
      ..writeByte(6)
      ..write(obj.pwdChangeStatus)
      ..writeByte(7)
      ..write(obj.profilePhoto)
      ..writeByte(8)
      ..write(obj.eMail)
      ..writeByte(9)
      ..write(obj.mobile)
      ..writeByte(10)
      ..write(obj.parentId)
      ..writeByte(11)
      ..write(obj.academicId)
      ..writeByte(12)
      ..write(obj.academicYear)
      ..writeByte(13)
      ..write(obj.usrId)
      ..writeByte(14)
      ..write(obj.divisionId)
      ..writeByte(15)
      ..write(obj.classId)
      ..writeByte(16)
      ..write(obj.medium)
      ..writeByte(17)
      ..write(obj.userType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
