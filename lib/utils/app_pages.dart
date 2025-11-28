import 'package:flutter_meeting_app/bindings/auth_bindings.dart';
import 'package:flutter_meeting_app/views/auth/login_view.dart';
import 'package:flutter_meeting_app/views/welcome/welcome_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  final pages = [
    GetPage(name: AppRoutes.welcome, page: () => WelcomeView()),
    GetPage(name: AppRoutes.login, page: () => LoginView(),binding: LoginBinding()),
  ];
}
