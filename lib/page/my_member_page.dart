import 'package:flutter/material.dart';

class MyMemberPage extends StatefulWidget {
  @override
  _MyMemberPageState createState() => _MyMemberPageState();
}

class _MyMemberPageState extends State<MyMemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('我'),
          ],
        ),
      ),
    );
  }
}
