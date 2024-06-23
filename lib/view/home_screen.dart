import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_task/model/best_selling.dart';
import 'package:slash_task/model/categories.dart';
import 'package:slash_task/model/header.dart';
import 'package:slash_task/model/new_arrival.dart';
import 'package:slash_task/model/recommended.dart';
import 'package:slash_task/view/components/category_widget.dart';
import 'package:slash_task/view/components/header_widget.dart';
import 'package:slash_task/view/components/items_widget.dart';
import 'package:slash_task/view/components/new_arrival_widget.dart';
import 'package:slash_task/view/components/recommended_widget.dart';
import 'package:slash_task/view_model/utils/app_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.none,
        centerTitle: true,
        backgroundColor: Colors.white,
        leadingWidth: 100.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w, top: 6.h),
          child: Text(
            'Slash.',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
        ),
        title: Row(
          children: [
            SizedBox(
              width: 6.w,
            ),
            SvgPicture.asset(
              AppAssets.location,
              width: 25.w,
              height: 25.h,
            ),
            SizedBox(
              width: 6.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nasr City',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  'Cairo',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            InkWell(
              onTap: (){},
              child: SvgPicture.asset(
                AppAssets.vector,
                width: 10.w,
                height: 10.h,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: InkWell(
              onTap: (){},
              child: SvgPicture.asset(
                AppAssets.notification,
                width: 28.w,
                height: 28.h,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(14.sp),
        children: [
          Row(
            children: [
              SearchBar(
                constraints: BoxConstraints(maxWidth: 280.w, minHeight: 32.h),
                padding: MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.only(left: 12.w, right: 12.w)),
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                leading: SvgPicture.asset(AppAssets.search),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r))),
                shadowColor: MaterialStatePropertyAll<Color>(Colors.white),
                hintText: 'Search here.',
                hintStyle: MaterialStatePropertyAll<TextStyle>(
                    TextStyle(color: Colors.grey, fontSize: 16.sp)),
              ),
              SizedBox(width: 6.w),
              InkWell(onTap: () {}, child: SvgPicture.asset(AppAssets.filter))
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 120.h,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(AppAssets.hotDeal);
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 4.w,
              ),
              itemCount: 2,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Center(
            child: SvgPicture.asset(AppAssets.dots),
          ),
          SizedBox(
            height: 12.h,
          ),
          HeaderWidget(header: Header(title: 'Categories')),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 72.h,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemBuilder: (BuildContext context, int index) {
                  return CategoryWidget(category: categories[index]);
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 8.w,
                    ),
                itemCount: categories.length),
          ),
          SizedBox(
            height: 16.h,
          ),
          HeaderWidget(header: Header(title: 'Best Selling')),
          SizedBox(height: 12.h,),
         SizedBox(height: 150.h,
           child: ListView.separated(
               shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               clipBehavior: Clip.none,
               itemBuilder: (BuildContext context, int index){
             return ItemsWidget(bestSelling: best[index]);

           }, separatorBuilder: (context, index) => SizedBox(
             width: 8.w,
           ), itemCount: best.length),
         ),
          SizedBox(height: 12.h,),
          HeaderWidget(header: Header(title: 'New Arrival')),
          SizedBox(height: 12.h,),
          SizedBox(height: 150.h,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemBuilder: (BuildContext context, int index){
                  return NewArrivalWidget(newArrival:newArrival[index]);

                }, separatorBuilder: (context, index) => SizedBox(
              width: 8.w,
            ), itemCount: newArrival.length),
          ),
          SizedBox(height: 12.h,),
          HeaderWidget(header: Header(title: 'Recommended for you')),
          SizedBox(height: 12.h,),
          SizedBox(height: 150.h,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemBuilder: (BuildContext context, int index){
                  return RecommendedWidget(recommended4u:recommends[index]);

                }, separatorBuilder: (context, index) => SizedBox(
              width: 8.w,
            ), itemCount: recommends.length),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [

        BottomNavigationBarItem(icon:SvgPicture.asset(AppAssets.home),label: 'Home',activeIcon: SvgPicture.asset(AppAssets.home) ),
        BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.love), label: 'Favorites'),
        BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.cart), label: 'My cart'),
        BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.profile), label: 'Profile',backgroundColor: Colors.transparent),
        ],),
    );
  }
}
