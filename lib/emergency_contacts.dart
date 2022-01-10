import 'package:flutter/material.dart';

class EmergencyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          appBar: AppBar(
            backgroundColor: Color(0xFF0A0E21),
            title: Text("Emergency Contacts"),
          ),
          body: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1122"),
                subtitle: Text("Rescue"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1123"),
                subtitle: Text("Police"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1124"),
                subtitle: Text("Fire brigade"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1122"),
                subtitle: Text("Rescue"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1123"),
                subtitle: Text("Police"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1124"),
                subtitle: Text("Fire brigade"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1122"),
                subtitle: Text("Rescue"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1123"),
                subtitle: Text("Police"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("1124"),
                subtitle: Text("Fire brigade"),
              ),
            ],
          )),
    );
  }
}
