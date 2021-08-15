import 'package:flutter/material.dart';

class ReminderCard extends StatefulWidget {
  @override
  _ReminderCardState createState() => _ReminderCardState();

  final String name;
  final String details;

  const ReminderCard({required this.name, required this.details});
}

class _ReminderCardState extends State<ReminderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF55140132), Color(0xFF166118153)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          boxShadow: [
            BoxShadow(
                color: Colors.red.withOpacity(0.4),
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(4, 4))
          ],
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                  activeColor: Colors.white,
                  value: true,
                  onChanged: (bool value) {
                    if (value != true) value = false;
                  }),
              SizedBox(width: 8),
              Text(widget.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Divider(),
          Text(widget.details,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right),
        ],
      ),
    );
  }
}
