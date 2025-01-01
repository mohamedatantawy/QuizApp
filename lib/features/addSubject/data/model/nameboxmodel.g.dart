// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nameboxmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NameboxmodelAdapter extends TypeAdapter<Nameboxmodel> {
  @override
  final int typeId = 1;

  @override
  Nameboxmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Nameboxmodel(
      namebox: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Nameboxmodel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.namebox);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameboxmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
