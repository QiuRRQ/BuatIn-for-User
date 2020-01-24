import 'package:flutter/material.dart';
import 'package:testdrive/Screens/DetailSiteForm/DetailSiteFormView.dart';

class DetailSiteFormScreen extends StatefulWidget{

  var documentID;
  DetailSiteFormScreen(this.documentID);

  DetailSiteFormView createState() => DetailSiteFormView();

}
