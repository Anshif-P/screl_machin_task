// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_input_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FormInputModelAdapter extends TypeAdapter<FormInputModel> {
  @override
  final int typeId = 1;

  @override
  FormInputModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FormInputModel(
      subject: fields[0] as String?,
      preview: fields[1] as String?,
      name: fields[2] as String?,
      email: fields[3] as String?,
      runOncePerCustomer: fields[4] as bool,
      customAudience: fields[5] as bool,
      id: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FormInputModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.subject)
      ..writeByte(1)
      ..write(obj.preview)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.runOncePerCustomer)
      ..writeByte(5)
      ..write(obj.customAudience)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormInputModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
