import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/model/categories.dart';


class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({required this.category,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          SvgPicture.asset( category.icon??'',
          height: 50.h,
            width: 20.w,
          ),
          SizedBox(height: 6.h,),
          Text(category.name??'',style: TextStyle(fontSize: 12.sp),)
        ],
      ),
    );
  }
}
