import 'package:slash_task/view_model/utils/app_assets.dart';

class NewArrival {
  String? price;
  String? image;
  String? name;

  NewArrival({this.price, this.image, this.name});
}

List<NewArrival> newArrival = [
  NewArrival(
      name: 'New Arrival 1', price: '34.99', image: AppAssets.new1),
  NewArrival(
      name: 'New Arrival 2', price: '54.99', image: AppAssets.new2),
  NewArrival(
      name: 'New Arrival 3', price: '21.99', image: AppAssets.new1),
  NewArrival(
      name: 'New Arrival 4', price: '42.99', image: AppAssets.new2),
  NewArrival(
      name: 'New Arrival 5', price: '29.49', image: AppAssets.new1),
];
