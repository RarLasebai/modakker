import 'package:flutter/material.dart';

class MoshafScreen extends StatefulWidget {
  @override
  _MoshafScreenState createState() => _MoshafScreenState();
}

class _MoshafScreenState extends State<MoshafScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushReplacementNamed('home');
                });
              }),
          title: Text(
            "المُصحـف",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.only(top: 150.0),
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage('icons/fix.png'),
                      size: 200,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text("Sorry!",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text("This Screen still uncompleted",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                ))));
  }
}
