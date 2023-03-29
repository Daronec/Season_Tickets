import 'package:season_ticket/data/models/subscription_model.dart';

List<SubscriptionModel> subscriptionList = [
  SubscriptionModel(
    name: 'Чистюля',
    countTeeth: 10,
    limit: 1,
    priceFrom12: 7500,
    priceFrom18: 9000,
  ),
  SubscriptionModel(
    name: 'Хорошист',
    countTeeth: 20,
    limit: 1,
    priceFrom12: 13000,
    priceFrom18: 15000,
  ),
  SubscriptionModel(
    name: 'Сладкоежка',
    countTeeth: 30,
    limit: 1,
    priceFrom12: 20000,
    priceFrom18: 25000,
  ),
];

List<String> columnNames = [
  'Название абонемента',
  'Кол-во зубов',
  'Срок',
  'Цена, 0 - 12 лет',
  'Цена, 13 - 18 лет'
];
