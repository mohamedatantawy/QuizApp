// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qustion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QustionAndanswerAdapter extends TypeAdapter<QustionAndanswer> {
  @override
  final int typeId = 0;

  @override
  QustionAndanswer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QustionAndanswer(
      qustion: fields[0] as String,
      answer: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, QustionAndanswer obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.qustion)
      ..writeByte(1)
      ..write(obj.answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QustionAndanswerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
