// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savenotes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaveNoteAdapter extends TypeAdapter<SaveNote> {
  @override
  final int typeId = 0;

  @override
  SaveNote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveNote(
      title: fields[0] as String,
      description: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SaveNote obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveNoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
