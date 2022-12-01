class Colors {
  String Acolor;
  String Bcolor;

  Colors({required this.Acolor, required this.Bcolor});

  factory Colors.fromJson(Map<String, dynamic> json) {
    return Colors(
      Acolor: json['color_a'] as String? ?? "",
      Bcolor: json['color_b'] as String? ?? "",
    );
  }
}
