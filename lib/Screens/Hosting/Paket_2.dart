import 'package:flutter/material.dart';
import 'package:testdrive/Models/Hosting_models/Hosting_model.dart';
import 'package:testdrive/Screens/Domain/DomainSearch.dart';

class Paket_2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Card(
        child: Column(
          children: <Widget>[
            RichText(
                text: TextSpan(
                    text: "Paket Platinum \n",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24
                    )
                )
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(
                      wordSpacing: 15
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Rp.130,559",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough
                        )
                    ),
                    TextSpan(
                        text: " "
                    ),
                    TextSpan(
                        text: "Diskon 82%",
                        style: TextStyle(
                            letterSpacing: 2,
                            wordSpacing: 1,
                            color: Colors.redAccent
                        )
                    )
                  ]
              ),
            ),
            Text("\n Rp. 23,489/Bulan \n\n\n\n"),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: " Fitur :\n\n\n",
                        style: TextStyle(
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "- Bisa diakses oleh 250-500 orang secara bersamaan\n\n",
                        style: TextStyle(
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "- Perawatan Admin 10x dalam sebulan\n",
                        style: TextStyle(
                            color: Colors.black
                        )
                    )
                  ]
              ),
            ),
            ButtonTheme.bar(
              child: new ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  // BUTTON PERTAMA
                  new RaisedButton(
                    //DENGAN TEXT LIHAT DETAI
                    child: const Text('PILIH PAKET',),
                    textColor: Colors.white,
                    onPressed:(){
                      saveData();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DomainSearch()));
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  saveData(){
    setData('Paket Platinum','Rp. 23,489/Bulan');
  }
}