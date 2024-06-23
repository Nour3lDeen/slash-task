import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_task/model/recommended.dart';
import 'package:slash_task/view_model/utils/app_assets.dart';

class RecommendedWidget extends StatelessWidget {
  final Recommended4U recommended4u;
  const RecommendedWidget({required this.recommended4u,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              recommended4u.image??'',
              width: 100.w,
              height: 100.h,
              fit: BoxFit.fill,
            ),
            PositionedDirectional(
              top: 10.h,
              end: 10.w,
              child: InkWell(
                child: SvgPicture.asset(AppAssets.fav,
                  height: 20.h,
                  width: 20.w,),onTap: (){},
              ),
            )
          ],
        ),
        SizedBox(height: 6.h,),
        Text(recommended4u.name??'',style: TextStyle(fontSize: 14.sp),),
        SizedBox(height: 3.h,),
        Row(
          children: [ Text('EGP ${recommended4u.price}',style: TextStyle(fontSize:16.sp,fontWeight: FontWeight.bold ),),
            SizedBox(width: 10.w,),
            InkWell(child: SvgPicture.asset(AppAssets.add),
              onTap: (){},
            ),
          ],
        )
      ],
    );
  }
}
