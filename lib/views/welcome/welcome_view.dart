import '../../app_barrels.dart';

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
                Image.asset(AppImages.appLogo, height: 153.h, width: 152.w),
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

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40.h, left: 15.w, right: 15.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                    height: 65.h,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.primary,
                    splashColor: Colors.white.withOpacity(0.2),
                    highlightedColor: Colors.white.withOpacity(0.1),
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: AppColors.neutralFFFFFF,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomButton(
                    height: 65.h,
                    width: MediaQuery.of(context).size.width,
                    borderColor: AppColors.primary,
                    borderWidth: 2,
                    splashColor: Colors.white.withOpacity(0.2),
                    highlightedColor: Colors.white.withOpacity(0.1),
                    onTap: () {
                      Get.offNamed(AppRoutes.login);
                    },
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: AppColors.darkPrimary,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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
