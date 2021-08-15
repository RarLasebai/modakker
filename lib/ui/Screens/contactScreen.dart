import 'package:agendaapp/main.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  static const _tabs = <Widget>[
    Text("Programmer: \n\n  Abrar Lasebai\n  abr.lasebai@gmail.com\n",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),
        key: ValueKey(1)),
    Text("Graphic Designer: \n\n  Hadeel AlMilady\n hadeelalmila@gmail.com\n",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),
        key: ValueKey(2)),
  ];
  static const btmNavbarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("icons/programmer.png")),
        label: 'Programmer'),
    BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("icons/graphic.png")),
        label: 'Graphic Designer')
  ];
  int _currTabIdx = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: MaterialColor(0xFF880E4F, color),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushReplacementNamed('home');
                });
              }),
          title: Text(
            "تواصل معنا",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              "icons/logo.png",
              fit: BoxFit.fitWidth,
              height: size.height * 0.25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Contact with us:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(
                      thickness: 1.2,
                      color: MaterialColor(0xFF880E4F, color),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PageTransitionSwitcher(
                      duration: Duration(seconds: 2),
                      transitionBuilder:
                          (child, primaryAnimation, secondaryAnimation) =>
                              FadeThroughTransition(
                        animation: primaryAnimation,
                        secondaryAnimation: secondaryAnimation,
                        child: child,
                      ),
                      child: _tabs[_currTabIdx],
                    ),
                    BottomNavigationBar(
                      elevation: 0.8,
                      iconSize: 30,
                      items: btmNavbarItems,
                      currentIndex: _currTabIdx,
                      onTap: (idx) => setState(() => this._currTabIdx = idx),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                        "Thank You for using the application, if you have any review you can E-mail us!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
