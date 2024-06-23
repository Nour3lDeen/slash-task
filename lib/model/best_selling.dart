import 'package:slash_task/view_model/utils/app_assets.dart';

class BestSelling {
  String? price;
  String? image;
  String? name;

  BestSelling({this.price, this.image, this.name});
}

List<BestSelling> best = [
  BestSelling(
      name: 'Best Seller 1', price: '29.99', image: AppAssets.bestSelling1),
  BestSelling(
      name: 'Best Seller 2', price: '49.99', image: AppAssets.bestSelling2),
  BestSelling(
      name: 'Best Seller 3', price: '19.99', image: AppAssets.bestSelling1),
  BestSelling(
      name: 'Best Seller 4', price: '39.99', image: AppAssets.bestSelling2),
  BestSelling(
      name: 'Best Seller 5', price: '24.99', image: AppAssets.bestSelling1),
];
