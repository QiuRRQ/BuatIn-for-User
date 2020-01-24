import 'package:flutter/material.dart';
import 'package:testdrive/Models/LoginPageModel/authentication.dart';

import 'package:testdrive/Screens/RegisterPage/RegisterPageView.dart';

class RegisterPageScreen extends StatefulWidget{


  final BaseAuth auth;
  RegisterPageScreen(this.auth);

  @override
  RegisterPageView createState() => new RegisterPageView();

}