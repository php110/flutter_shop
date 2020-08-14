import 'package:flutter/material.dart';

class MyCategoryPage extends StatefulWidget {
  @override
  _MyCategoryPageState createState() => _MyCategoryPageState();
}

class _MyCategoryPageState extends State<MyCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('分类'),
          ],
        ),
      ),
    );
  }
}
