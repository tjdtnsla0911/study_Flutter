import 'package:flutter/material.dart';

class ThreeApp extends StatelessWidget {
  const ThreeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('여기도 공사중!'),
      ),
      body: Container(
        child: Center(
          child: Text('여기도 페이지공사중 2021/05/19~~~'),
        ),
      ),
    );
  }
}
