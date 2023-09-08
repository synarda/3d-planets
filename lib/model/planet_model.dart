class PlanetModel {
  final int id;
  final String name;
  final double diameter;
  final int satellite;
  final String day;
  final String year;
  final String description;
  final String url;
  PlanetModel({
    required this.id,
    required this.name,
    required this.diameter,
    required this.satellite,
    required this.day,
    required this.year,
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'diameter': diameter,
      'satellite': satellite,
      'day': day,
      'year': year,
      'description': description,
      'url': url,
    };
  }

  factory PlanetModel.fromMap(Map<String, dynamic> map) {
    return PlanetModel(
      id: map['id'] as int,
      name: map['name'] as String,
      diameter: map['diameter'] as double,
      satellite: map['satellite'] as int,
      day: map['day'] as String,
      year: map['year'] as String,
      description: map['description'] as String,
      url: map['url'] as String,
    );
  }
}
