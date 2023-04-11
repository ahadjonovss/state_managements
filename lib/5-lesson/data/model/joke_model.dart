class Joke {

  final String type;
  final String setup;
  final String punchline;
  final int id;

  Joke({
    required this.id,
    required this.setup,
    required this.punchline,
    required this.type,
  });

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      id: json["id"] ?? 0,
      setup: json["setup"] ?? '',
      punchline: json['punchline'] ?? '',
      type: json["type"] ?? '',
    );
  }
}
