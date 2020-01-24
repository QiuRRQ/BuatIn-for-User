import 'package:flutter/material.dart';
import 'package:testdrive/Models/History/Pemesanan.dart';
import 'package:testdrive/Screens/History/DetailHistoryView.dart';
import 'package:testdrive/Screens/History/HistoryView.dart';

class DetailHistoryScreen extends StatefulWidget{
  final Pemesanan order;

  DetailHistoryScreen(this.order);


  @override
  DetailHistoryView createState() => new DetailHistoryView();

}