import 'dart:collection';
import 'dart:convert';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testdrive/Screens/History/DetailHistoryScreen.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class DetailHistoryModel extends State<DetailHistoryScreen>{

  bool isLoading = false;
////  bool isEmpty = false;
////  String sizeImage;
////  String alamat;
////  String deskripsi;
////  String noTelepon;
////  String namaUsaha;

  openSite() async{
    var url = 'https://${widget.order.domain}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  confirm()async{
    CollectionReference updatePemesanan = Firestore.instance.collection('pemesanan');

    updatePemesanan.document(widget.order.documentId).updateData(
        {
          "status" : "Complete"
        }
    ).catchError((e) {
      print(e);
    });

  }

  failed() async{
    bool success = false;
    //ToDO: buka gmail dan kirim email ke alamat email admin dengan subject apa gitu......
    var url = 'mailto:azizurrohim13@gmail.com?subject=Website Failed ${widget.order.domain}';
    if (await canLaunch(url)) {
      await launch(url);
      success = true;
    } else {
      throw 'Could not launch $url';
    }

    if(success){
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: new Text(""),
            content: new Text("Pesan Terkirim ke admin"),
            actions: <Widget>[
              new FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: new Text("Close")
              )
            ],
          );
        },
      );
    }
    //ToDO:bikin showdialog kalau ada waktu
  }

//  _getDetail()async{
//
//    CollectionReference ref = Firestore.instance.collection('detailPesanan');
//    QuerySnapshot querySnapshot = await ref.where("pesananID", isEqualTo: widget.order.documentId).getDocuments();
//
//    if(querySnapshot.documents.isEmpty){
//      setState(() {
//        isEmpty = true;
//        isLoading = false;
//      });
//    }else{
//      setState(() {
//        alamat = querySnapshot.documents[0]['alamat'];
//        deskripsi = querySnapshot.documents[0]['deskripsi'];
//        noTelepon = querySnapshot.documents[0]['noTelepon'];
//        namaUsaha = querySnapshot.documents[0]['usaha'];
//        sizeImage = querySnapshot.documents[0]['image'];
//        isLoading = false;
//        isEmpty = false;
//      });
//    }
//
//  }

  @override
  void initState() {
//    _getDetail();
    super.initState();
  }
}