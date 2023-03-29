class SubscriptionModel {
  SubscriptionModel({
    required this.name,
    required this.countTeeth,
    required this.limit,
    required this.priceFrom12,
    required this.priceFrom18,
  });

  final String? name;
  final int? countTeeth;
  final int? limit;
  final double? priceFrom12;
  final double? priceFrom18;
}