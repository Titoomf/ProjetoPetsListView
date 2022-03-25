import 'dart:convert';

class PetsModel {
  final String name;
  final String breed;
  final double ageInMo;
  final String gender;
  final String images;
  final double km;
  PetsModel({
    required this.name,
    required this.breed,
    required this.ageInMo,
    required this.gender,
    required this.images,
    required this.km,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'breed': breed,
      'ageInMo': ageInMo,
      'gender': gender,
      'images': images,
      'km': km,
    };
  }

  factory PetsModel.fromMap(Map<String, dynamic> map) {
    return PetsModel(
      name: map['name'] ?? '',
      breed: map['breed'] ?? '',
      ageInMo: map['ageInMo']?.toDouble() ?? 0.0,
      gender: map['gender'] ?? '',
      images: map['images'] ?? '',
      km: map['km']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PetsModel.fromJson(String source) =>
      PetsModel.fromMap(json.decode(source));
}
