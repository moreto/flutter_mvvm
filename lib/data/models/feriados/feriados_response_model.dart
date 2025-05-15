import 'dart:convert';

List<FeriadosResponseModel> feriadosResponseModelFromJson(String str) =>
    List<FeriadosResponseModel>.from(json.decode(str).map((x) => FeriadosResponseModel.fromJson(x)));

String feriadosResponseModelToJson(List<FeriadosResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FeriadosResponseModel {
  DateTime date;
  String name;
  Type type;

  FeriadosResponseModel({required this.date, required this.name, required this.type});

  factory FeriadosResponseModel.fromJson(Map<String, dynamic> json) =>
      FeriadosResponseModel(date: DateTime.parse(json["date"]), name: json["name"], type: typeValues.map[json["type"]]!);

  Map<String, dynamic> toJson() => {
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "name": name,
    "type": typeValues.reverse[type],
  };
}

enum Type { NATIONAL }

final typeValues = EnumValues({"national": Type.NATIONAL});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
