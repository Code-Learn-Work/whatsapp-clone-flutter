import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: new CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Text("CODING101"),
          trailing: Text("Exit"),
        ),
        child: Container(
          color: CupertinoColors.white,
        ),
      ),
    );
  }
}