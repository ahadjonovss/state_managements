class CodingResources {
  int id;
  String description;
  String url;
  List<String> types;
  List<String> topics;
  List<String> levels;

  CodingResources(
      {required this.id,
      required this.description,
      required this.levels,
      required this.topics,
      required this.types,
      required this.url});

  factory CodingResources.fromJson(Map<String, dynamic> json) {
    return CodingResources(
      id: json['id']??0,
      description: json["description"]??'',
      levels: json['levels']??[],
      topics: json["topics"]??[],
      types: json['types']??[],
      url: json["url"]??'',
    );
  }
}
