import 'package:flutter/material.dart';
import 'package:training_and_placement_project/routes.dart';
import 'package:training_and_placement_project/screen/loginscreen.dart';
import 'package:training_and_placement_project/screen/signup.dart';

import 'screen/homepage.dart';
import 'utils/bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/landing",
      routes: {
        Routes.homeroutes: (context) => HomePage(),
        Routes.landingroute: (context) => BottomNavBar(),
        Routes.loginroutes: (context) => LoginScreen(),
        // Routes.cartroutes: (context) => Cartpage(),
        // Routes.accountroutes: (context) => Accountpage(),
        Routes.signuproutes: (context) => SignUp(),
      },
    );
  }
}
