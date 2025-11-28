import 'package:flutter_meeting_app/app_barrels.dart';

class LoginController extends GetxController {
  /// Form key 
  final formKey = GlobalKey<FormState>();

  /// Text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController =
      TextEditingController(); 

  /// Toggle Eye button
  var isVisibleText = false.obs;

  void toggleVisibilty() {
    isVisibleText.value = !isVisibleText.value;
  }

  /// Toggle Terms & Conditions
  var isAccepted = false.obs;

  void toggleTerms() {
    isAccepted.value = !isAccepted.value;
  }

  /// Login functions
  void login() {
    // Validate form
    bool isFormValid = formKey.currentState!.validate();
    bool termsAccepted = isAccepted.value;

    if (!isFormValid && !termsAccepted) {
      
      Get.showSnackbar(
        GetSnackBar(
          message:
              'Please fill all required fields and accept Terms & Conditions',
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    } else if (!isFormValid) {
      Get.showSnackbar(
        GetSnackBar(
          message: 'Please fill all fields',
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    } else if (!termsAccepted) {
      Get.showSnackbar(
        GetSnackBar(
          message: 'Please accept Terms & Conditions',
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      Get.showSnackbar(
        GetSnackBar(
          message: 'Login Successfully!',
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
