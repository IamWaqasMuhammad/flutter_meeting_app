import 'package:flutter_meeting_app/view_models/auth_view_model.dart';
import 'package:get/get.dart';



///Login Binding
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}