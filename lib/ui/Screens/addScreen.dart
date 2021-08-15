/*import 'package:flutter/material.dart';

class AddReminder extends StatefulWidget {
  AddReminder({Key? key}) : super(key: key);
  @override
  _AddReminderState createState() => _AddReminderState();
}

class Data {
  int id;
  String name;
  String details;
  bool save = false;
  Data(
      {required this.id,
      required this.name,
      required this.details,
      required this.save});

  toJSONEncodable() {
    Map<String, dynamic> jData = new Map();
    jData['id'] = id;
    jData['name'] = name;
    jData['details'] = details;
    jData['save'] = save;
    return jData;
  }
}

class EnData {
  List<Data> items = [];
  toJSONEncodable() {
    return items.map((data) {
      return data.toJSONEncodable();
    }).toList();
  }
}

class _AddReminderState extends State<AddReminder> {
  int id = 0;
  final EnData list = new EnData();
  final LocalStorage storage = new LocalStorage('addReminder');
  bool initial = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  _saveToStorage() {
    storage.setItem('reminder', list.toJSONEncodable());
    print("it should");
  }

/*
  _saveReminder(Data item) {
    setState(() {
      item.save = !item.save;
      _saveToStorage();
    });
  }
*/
  _addReminder(String name, String details) {
    setState(() {
      final item = new Data(id: id, name: name, details: details, save: true);
      list.items.add(item);
      id++;
      _saveToStorage();
      print('must');
    });
  }

  /* _clearReminders() async {
    await storage.clear();
    setState(() {
      list.items = storage.getItem('reminder') ?? [];
    });
  }

*/
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "إضافة تذكير",
            style: Theme.of(context).textTheme.headline1,
          ),
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushReplacementNamed('home');
                });
              })),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              // ignore: missing_return
              validator: (String? value) {
                if (value!.isEmpty) return 'Please enter name';
              },
              controller: detailsController,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.red, fontSize: 15.0),
                labelText: 'اسم التذكير',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: nameController,
              style: TextStyle(color: Colors.black, fontSize: 15.0),
              decoration: InputDecoration(
                labelText: 'التفاصيل',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('يتم حفظ التذكير')));
                    _save();
                  }
                });
              },
              child: Text('حفظ'),
            )
          ],
        ),
      ),
    );
  }

  void _save() {
    _addReminder(nameController.value.text, detailsController.value.text);

    nameController.clear();
    detailsController.clear();
    print(list.items);
    print(storage);
  }
}
*/
