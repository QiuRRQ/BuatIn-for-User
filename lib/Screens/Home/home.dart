
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testdrive/Models/LoginPageModel/authentication.dart';
import 'package:testdrive/Screens/Templates/ThemePage.dart';

class home extends StatefulWidget {


  home({this.auth, this.onSignedOut});
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  String name = "";
  String email = "";
  String role = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(name),
              accountEmail: new Text(email),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("P"),
              ),
            ),
            new ListTile(
              leading: new Icon(Icons.home),
              title: new Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              leading: new Icon(Icons.history),
              title: new Text("Riwayat Pesanan"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/b");
              },
            ),
            new ListTile(
              leading: new Icon(Icons.people),
              title: new Text("Profile"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/c");
              },
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.close),
              title: new Text("Log Out"),
              onTap: (){
                _signOut();
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
      body: new ListView(
          children: <Widget>[
            Row (

              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("blog")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/blog.png'),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("Buddypress")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/Buddypress.png'),
                        )
                    )
                ),
              ],
            ),
            Row (
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("corporate")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/corporate.png'),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("Creative")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/Creative.png'),
                        )
                    )
                ),
              ],
            ),
            Row (
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("ecommerce")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/ecommerce.png'),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("education")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/education.png'),
                        )
                    )
                ),
              ],
            ),
            Row (
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("entertainment")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/entertaiment.png'),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("miscellaneus")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/miscellaneus.png'),
                        )
                    )
                ),
              ],
            ),
            Row (
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("mobile")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/mobile.png'),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("nonprofit")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/nonprofit.png'),
                        )
                    )
                ),
              ],
            ),
            Row (
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("realestate")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/realestate.png'),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("retail")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/retail.png'),
                        )
                    )
                ),
              ],
            ),
            Row (
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("tech")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/tech.png'),
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child:
                    new GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThemePage("wedding")));
                        },
                        child:
                        Card(
                          child: Image.asset('assets/Buatin/wedding.png'),
                        )
                    )
                ),
              ],
            ),
          ]
      )

    );

  }

  _getUser()async{
    var prefs = await SharedPreferences.getInstance();
    String uid = prefs.getString('user');
    CollectionReference ref = Firestore.instance.collection('users');
    QuerySnapshot querySnapshot = await ref.where("uid", isEqualTo: uid).getDocuments();
    prefs.setString('role', querySnapshot.documents[0]['role']);
    setState(() {
      this.email = querySnapshot.documents[0]['email'];
      this.name = querySnapshot.documents[0]['name'];
      this.role = querySnapshot.documents[0]['role'];
    });

  }


  @override
  void initState() {
    _getUser();
    super.initState();
  }

  void _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {}
  }
}


