// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mostlyplayed.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MostlyplayedAdapter extends TypeAdapter<Mostlyplayed> {
  @override
  final int typeId = 4;

  @override
  Mostlyplayed read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Mostlyplayed(
      id: fields[0] as int?,
      count: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Mostlyplayed obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MostlyplayedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
