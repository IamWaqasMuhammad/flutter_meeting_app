import '../../app_barrels.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();

    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              Text(
                'Welcome Back !',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.darkPrimary,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Please log in to join your meeting hub',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.neutralCECECE,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.h),
              Form(
                key: loginController.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: AppColors.neutralCECECE,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    CustomTextField(
                      controller: loginController.emailController,
                      hintText: 'Enter your email address',
                      borderColor: AppColors.darkContent,
                      borderRadius: 10.r,
                      borderWidth: 1.w,
                      cursorColor: AppColors.darkPrimary,
                      cursorRadius: Radius.circular(6.r),
                      cursorWidth: 2.w,
                      enableBorderColor: AppColors.darkContent,
                      enableBorderRadius: 10.r,
                      enabled: true,
                      focusBorderColor: AppColors.darkPrimary,
                      focusBorderRadius: 10.r,
                      fillColor: AppColors.neutral868686,
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onValid: Validator.validateEmail,
                      hintTextStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sp,
                        color: AppColors.neutralCECECE,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: AppColors.neutralCECECE,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Obx(
                      () => CustomTextField(
                        controller: loginController.passwordController,
                        hintText: 'Enter your password',
                        borderColor: AppColors.darkContent,
                        borderRadius: 10,
                        borderWidth: 1,
                        cursorColor: AppColors.darkPrimary,
                        cursorRadius: Radius.circular(6),
                        cursorWidth: 2,
                        suffixIcon: IconButton(
                          onPressed: loginController.toggleVisibilty,
                          icon: Icon(
                            loginController.isVisibleText.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.darkPrimary,
                          ),
                        ),
                        enableBorderColor: AppColors.darkContent,
                        enableBorderRadius: 10.r,
                        enabled: true,
                        focusBorderColor: AppColors.darkPrimary,
                        focusBorderRadius: 10.r,
                        fillColor: AppColors.neutral868686,
                        obscureText: loginController.isVisibleText.value,
                        textInputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        onValid: Validator.validatePassword,
                        hintTextStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                          color: AppColors.neutralCECECE,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => CustomRadioButton<bool>(
                            value: true,
                            selected: loginController.isAccepted.value,
                            onTap: loginController.toggleTerms,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: "I have read and accept the ",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: AppColors.neutralCECECE,
                              ),
                              children: [
                                TextSpan(
                                  text: "Terms of Service",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(text: " and "),
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(text: "."),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70.h),
                    CustomButton(
                      height: 65.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.darkPrimary,
                      onTap: loginController.login,
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: AppColors.neutralFFFFFF,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
