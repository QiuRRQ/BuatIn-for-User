import 'package:flutter/material.dart';
import 'package:testdrive/Screens/History/HistoryView.dart';

class History extends StatefulWidget{
  final String title;

  History(this.title);


  @override
  HistoryView createState() => new HistoryView();

}