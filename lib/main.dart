import 'package:car_workshop/routes/routes.dart';
import 'package:car_workshop/routes/routes_name.dart';
import 'package:car_workshop/utils/app_color.dart';
import 'package:car_workshop/utils/app_constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io' show Platform;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAH83PxFzRGFJJ3A2GkezxwU487_4hZ8f0',
        appId: '1:899145888647:android:6edf8fb0267c128ad79922',
        messagingSenderId: '899145888647',
        projectId: 'car-workshop-48236',
      ),
    );
  }else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.getSplashScreen(),
      getPages: AppRoutes.appRoutes(),
      defaultTransition: Transition.topLevel,
    );
  }
}