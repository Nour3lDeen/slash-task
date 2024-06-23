import 'package:slash_task/view_model/utils/app_assets.dart';

class Category{
  String? icon;
  String? name;
  Category({this.icon,this.name});
}

List<Category> categories=[
Category(
  icon: AppAssets.fashion,
  name: 'Fashion'
),
  Category(
    icon: AppAssets.games,
    name: 'Games'
  ),
  Category(
    icon: AppAssets.accessories,
    name: 'Accessories'
  ),
  Category(
    icon: AppAssets.books,
    name: 'Books'
  ), Category(
    icon: AppAssets.books,
    name: 'Books'
  ), Category(
    icon: AppAssets.books,
    name: 'Books'
  ), Category(
    icon: AppAssets.books,
    name: 'Books'
  ),
];
