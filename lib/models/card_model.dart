class CreditCard {
  final String id;
  final String name;
  final int statementDay;
  final int paymentDay;

  CreditCard({
    required this.id,
    required this.name,
    required this.statementDay,
    required this.paymentDay,
  });

  factory CreditCard.fromJson(Map<String, dynamic> json) {
    return CreditCard(
      id: json['_id'] ?? json['id'], // handles MongoDB _id
      name: json['name'],
      statementDay: json['statement_day'],
      paymentDay: json['payment_day'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'statement_day': statementDay,
      'payment_day': paymentDay,
    };
  }
}
