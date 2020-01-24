
import 'package:flutter/material.dart';
import 'package:testdrive/Models/History/DetailHistoryModel.dart';

class DetailHistoryView extends DetailHistoryModel{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pesanan"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        height: 500,
        child: isLoading ?
        Center(
          child: CircularProgressIndicator(),
        ) :
        new Card(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text("Domain : "),
                  new Text(widget.order.domain)
                ],
              ),
              Text("\n"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text("Total Biaya : "),
                  new Text(widget.order.harga)
                ],
              ),
              Text("\n"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text("Paket Layanan : "),
                  new Text(widget.order.layanan)
                ],
              ),
              Text("\n"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text("Status Pengerjaan : "),
                  new Text(widget.order.status)
                ],
              ),
              Text("\n"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text("Template : "),
                  new Text(widget.order.template)
                ],
              ),
              Divider(),

              widget.order.status == "Deliver"
                  ? ButtonTheme.bar(
                child: new ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // BUTTON PERTAMA
                    new RaisedButton(
                      //DENGAN TEXT LIHAT DETAI
                        child: const Text('Buka Website Anda',),
                        textColor: Colors.white,
                        onPressed: () {
                          openSite();
                        }
                    ),
                  ],
                )) : Text(""),
              Text("\n"),
              widget.order.status == "Deliver" ? Text("Apabila Website anda bisa berfungsi normal harap konfirmasi, apabila tidak normal klik Failed")
              : Text(""),
              widget.order.status == "Deliver"
                  ? ButtonTheme.bar(
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // BUTTON PERTAMA
                      new RaisedButton(
                        //DENGAN TEXT LIHAT DETAI
                          child: const Text('Konfirmasi Website',),
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: () {
                            confirm();
                            Navigator.of(context).pop();
                          }
                      ),
                      new RaisedButton(
                        //DENGAN TEXT LIHAT DETAI
                          child: const Text('Failed',),
                          color: Colors.red,
                          textColor: Colors.white,
                          onPressed: () {
                            failed();
                          }
                      ),
                    ],
                  )) : Text("")

            ],
          ),
        ),

      ),
    );
  }

}