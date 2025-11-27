import 'package:flutter/material.dart';
import 'package:flutter_meeting_app/constants/app_images.dart';
import 'package:flutter_meeting_app/constants/app_colors.dart';
import 'package:flutter_meeting_app/widgets/app_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.appLogo,
                  height: 153.h,
                  width: 152.w,
                ),
                SizedBox(height: 10.h),
                Text(
                  'Connects, Collaborate, Conquer',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: AppColors.darkPrimary,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Bottom buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40.h, left: 15.w, right: 15.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                    height: 46.h,
                    width: double.infinity,
                    color: AppColors.primary,
                    onTap: (){},
                    child: Center(child: Text('Sign Up',style: TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.neutralFFFFFF,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),)),
                  ),
                  SizedBox(height: 10.h),
                  CustomButton(
                    height: 46.h,
                    width: double.infinity,
                    borderColor: AppColors.primary,
                    borderWidth: 2,
                    onTap: (){},
                    child: Center(child: Text('Log In',style: TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.darkPrimary,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
