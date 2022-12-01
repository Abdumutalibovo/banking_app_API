import 'package:banking_app/data/models/colors_model.dart';

class UserData {
  int id;
  String cardType;
  String cardNumber;
  String bankName;
  double moneyAmount;
  String cardCurrency;
  String expireData;
  String iconImage;
  Colors colors;

  UserData({
    required this.id,
    required this.cardType,
    required this.cardNumber,
    required this.bankName,
    required this.moneyAmount,
    required this.cardCurrency,
    required this.expireData,
    required this.iconImage,
    required this.colors,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json["id"] as int? ?? 0,
      cardType: json['card_type'] as String? ?? "",
      cardNumber: json['card_number'] as String? ?? "",
      bankName: json['bank_name'] as String? ?? "",
      moneyAmount: json['money_amount'] as double? ?? 0.0,
      cardCurrency: json['card_currency'] as String? ?? "",
      expireData: json['expire_date'] as String? ?? "",
      iconImage: json['icon_image'] as String? ?? "",
      colors: Colors.fromJson(json['colors']),
    );
  }
}
