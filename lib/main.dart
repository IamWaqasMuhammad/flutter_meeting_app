

import 'app_barrels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), //figma design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Smart Meeting App',
          debugShowCheckedModeBanner: true,
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          initialRoute: AppRoutes.welcome,
          getPages: AppPages().pages,
        );
      },
    );
  }
}
