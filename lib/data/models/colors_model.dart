class ColorsModel {
  String Acolor;
  String Bcolor;

  ColorsModel({required this.Acolor, required this.Bcolor});

  factory ColorsModel.fromJson(Map<String, dynamic> json) {
    return ColorsModel(
      Acolor: json['color_a'] as String? ?? "",
      Bcolor: json['color_b'] as String? ?? "",
    );
  }
}
