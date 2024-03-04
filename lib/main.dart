import 'package:flutter/material.dart';
import 'package:helloworld/utils/routes.dart';
import 'pages/home.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              foregroundColor: Colors.black)),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => MyHomePage(title: 'Flutter Home Page'),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
      // A widget which will be started on application startup
      // home: MyHomePage(title: 'Flutter Home Page')
    );
  }
}
