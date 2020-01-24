import 'package:flutter/material.dart';
import 'package:testdrive/Screens/SendToMail/SendToMailView.dart';

class SendToMailScreen extends StatefulWidget{

  var idPesanan;

  SendToMailScreen(this.idPesanan);

  SendToMailView createState() => SendToMailView();

}
