import 'package:flutter/material.dart';
import 'package:helloworld/pages/cart_page.dart';
import 'package:helloworld/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';
import 'pages/home.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

// final store = MyStore();
void main() => runApp(VxState(store: MyStore(), child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.poppins().fontFamily,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              foregroundColor: Colors.black)),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => MyHomePage(title: 'Flutter Home Page'),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
      // A widget which will be started on application startup
      // home: MyHomePage(title: 'Flutter Home Page')
    );
  }
}
