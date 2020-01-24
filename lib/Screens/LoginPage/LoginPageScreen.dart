import 'package:flutter/material.dart';
import 'package:testdrive/Models/LoginPageModel/authentication.dart';
import 'package:testdrive/Screens/LoginPage/LoginPageView.dart';

class LoginPageScreen extends StatefulWidget{

  LoginPageScreen({this.auth, this.onSignedIn});
  final BaseAuth auth;
  final VoidCallback onSignedIn;

  @override
  LoginPageView createState() => new LoginPageView();

}