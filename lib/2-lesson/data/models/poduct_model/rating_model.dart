class RatingModel {
  num rate;
  int count;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      count: json["count"]??0,
      rate: json["rate"]??0,
    );
  }
}
