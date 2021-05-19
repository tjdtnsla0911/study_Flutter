import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('페이지공사중!'),
      ),
      body: Container(
        child: Center(
          child: Text('페이지공사중 2021/05/19~~~'),
        ),
      ),
    );
  }
}
