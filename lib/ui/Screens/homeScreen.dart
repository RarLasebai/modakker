import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:agendaapp/helper.dart';
import 'package:agendaapp/ui/widgets/ReminderCard.dart';
import 'package:agendaapp/models/reminder.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late ReminderCard card;
  RHelper helper = RHelper();
  List<Reminder> _reminders = [];
  late List<Reminder> _currentReminders;
//-------------------------Functions----------------

  bool status = true;

  @override
  void initState() {
    super.initState();
  }

//Screen and appBar frontend
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        backgroundColor: Colors.white,
        appBar: BackdropAppBar(
          centerTitle: true,
          title: (Text(
            'قائمة التذكيرات',
            style: Theme.of(context).textTheme.headline1,
          )),
        ),
        headerHeight: 400,
        frontLayer: ListView.builder(
            itemCount: _reminders.length,
            itemBuilder: (BuildContext context, int index) {
              return ReminderCard(
                  name: _reminders[index].details,
                  details: _reminders[index].name);
            }),
        backLayer: BackdropNavigationBackLayer(
          items: [
            ListTile(
                leading: ImageIcon(AssetImage('icons/to-do-list.png')),
                title: Align(
                    alignment: Alignment.centerRight,
                    child: Text("التذكيرات",
                        style: Theme.of(context).textTheme.bodyText2)),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('home');
                }),
            Divider(),
            ListTile(
                leading: ImageIcon(AssetImage('icons/athkar.png')),
                title: Align(
                    alignment: Alignment.centerRight,
                    child: Text("الأذكار",
                        style: Theme.of(context).textTheme.bodyText2)),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('athkar');
                }),
            Divider(),
            ListTile(
              leading: ImageIcon(AssetImage('icons/Tasbeeh.png')),
              title: Align(
                  alignment: Alignment.centerRight,
                  child: Text("تسبيح",
                      style: Theme.of(context).textTheme.bodyText2)),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('tasbeeh');
              },
            ),
            Divider(),
            ListTile(
              leading: ImageIcon(AssetImage('icons/quran.png')),
              title: Align(
                  alignment: Alignment.centerRight,
                  child: Text("مصحف",
                      style: Theme.of(context).textTheme.bodyText2)),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('moshaf');
              },
            ),
            Divider(),
            ListTile(
                leading: ImageIcon(AssetImage('icons/information.png')),
                title: Align(
                    alignment: Alignment.centerRight,
                    child: Text("تواصل معنا",
                        style: Theme.of(context).textTheme.bodyText2)),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('contact');
                })
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              new ReminderCard(
                  name: detailsController.text, details: nameController.text);
              showModalBottomSheet(
                useRootNavigator: true,
                context: context,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                builder: (context) {
                  return StatefulBuilder(builder: (context, setModalState) {
                    return Container(
                      padding: const EdgeInsets.all(32),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (String? value) {
                                if (value!.isEmpty) return 'Please enter name';
                              },
                              controller: detailsController,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                              decoration: InputDecoration(
                                errorStyle: TextStyle(
                                    color: Colors.red, fontSize: 15.0),
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
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
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
                                    _save();
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('تم حفظ التذكير')));
                                  }
                                });
                              },
                              child: Text('حفظ'),
                            )
                          ],
                        ),
                      ),
                    );
                  });
                },
              );
            }));
  }

  void _save() {
    var _reminder = Reminder(
        name: nameController.text, details: detailsController.text, save: 0);
    _reminders.add(_reminder);
    helper.insertReminder(_reminder);
  }
}
