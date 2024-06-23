import 'package:slash_task/view_model/utils/app_assets.dart';

class Recommended4U {
  String? price;
  String? image;
  String? name;

  Recommended4U({this.price, this.image, this.name});
}

List<Recommended4U> recommends = [
  Recommended4U(
      name: 'Recommended 1', price: '27.99', image: AppAssets.recommend1),
  Recommended4U(
      name: 'Recommended 2', price: '47.99', image: AppAssets.recommend2),
  Recommended4U(
      name: 'Recommended 3', price: '18.99', image: AppAssets.recommend1),
  Recommended4U(
      name: 'Recommended 4', price: '36.99', image: AppAssets.recommend2),
  Recommended4U(
      name: 'Recommended 5', price: '25.49', image: AppAssets.recommend1),
];
