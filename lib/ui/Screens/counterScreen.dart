import 'package:flutter/material.dart';

class TasbeehScreen extends StatefulWidget {
  @override
  _TasbeehScreenState createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

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
          "تسبـيح",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 100,
              child: Text('$_counter',
                  style: Theme.of(context).textTheme.headline2),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                    label: Text("نقصان",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    icon: Icon(Icons.minimize),
                    tooltip: 'Decrement',
                    onPressed: () => _decrementCounter()),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton.extended(
                    label: Text('زيادة',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    icon: Icon(Icons.add),
                    tooltip: 'Increment',
                    onPressed: () => _incrementCounter()),
              ],
            ),
            SizedBox(height: 10),
            FloatingActionButton.extended(
              label: Text('البدأ من جديد',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              icon: Icon(Icons.restore),
              tooltip: 'Reset',
              onPressed: () => _resetCounter(),
            )
          ],
        ),
      ),
    );
  }
}
