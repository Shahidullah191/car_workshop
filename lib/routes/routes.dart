import 'package:car_workshop/features/splash/screens/splash_screen.dart';
import 'package:car_workshop/routes/routes_name.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [

    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
    ),

  ];
}
