
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_task/model/header.dart';
import 'package:slash_task/view_model/utils/app_assets.dart';

class HeaderWidget extends StatelessWidget {
  final Header header;

  const HeaderWidget({required this.header, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Row(
        children: [
          Expanded(
            child: Text(
              header.title ?? '',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),

          Text(
            'See all',
            style: TextStyle(fontSize: 16.sp),
          ),
          SizedBox(width: 8.w,),
          InkWell(
              onTap: (){},
              child: SvgPicture.asset(AppAssets.seeAll)),
        ],
      ),
    );
  }
}
