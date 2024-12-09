class Farmer {
  final int id;
  final String name;
  final String location;
  final String contact;

  Farmer({
    required this.id,
    required this.name,
    required this.location,
    required this.contact,
  });

  factory Farmer.fromJson(Map<String, dynamic> json) {
    return Farmer(
      id: json['id'],
      name: json['name'],
      location: json['loca'],
      contact: json['Contact'],
    );
  }
}
