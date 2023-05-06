import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zero_waste/routes/routes.dart';
import 'package:zero_waste/view/screens/auth/login_screen.dart';
import 'package:zero_waste/view/screens/home_screen.dart';
import 'package:zero_waste/view/screens/main_screen.dart';

import 'view/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hagtak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MainScreen(),
      getPages: AppRoutes.routes,
    );
  }
}
