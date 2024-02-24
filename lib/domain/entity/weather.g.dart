// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherAdapter extends TypeAdapter<Weather> {
  @override
  final int typeId = 2;

  @override
  Weather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Weather(
      temperature: fields[0] as double,
      humidity: fields[1] as int,
      pressure: fields[2] as int,
      description: fields[4] as String,
      windSpeed: fields[5] as double,
      weatherImageUrl: fields[6] as String,
      cloudiness: fields[3] as int,
      cityName: fields[8] as String,
      countryCode: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Weather obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.temperature)
      ..writeByte(1)
      ..write(obj.humidity)
      ..writeByte(2)
      ..write(obj.pressure)
      ..writeByte(3)
      ..write(obj.cloudiness)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.windSpeed)
      ..writeByte(6)
      ..write(obj.weatherImageUrl)
      ..writeByte(7)
      ..write(obj.countryCode)
      ..writeByte(8)
      ..write(obj.cityName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
