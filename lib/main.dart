import 'package:flutter/material.dart';
import 'package:testdrive/Models/LoginPageModel/authentication.dart';
import 'package:testdrive/Screens/History/History.dart';
import 'package:testdrive/Screens/Profile/Profile.dart';
import 'package:testdrive/Screens/Home/home.dart';
import 'Screens/LoginPage/RootPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: RootPage(auth: new Auth()),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => new home(),
        "/b": (BuildContext context) => new History("Riwayat Pemesanan"),
        "/c": (BuildContext context) => new Profile("Profile"),
      }
    );
  }
}
