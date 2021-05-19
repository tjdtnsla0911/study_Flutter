import 'package:flutter/material.dart';
import 'imageWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ImageWidgetApp(),
      // home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  const MaterialFlutterApp({Key key}) : super(key: key);

  @override
  _MaterialFlutterApp createState() => _MaterialFlutterApp();
}

class _MaterialFlutterApp extends State<MaterialFlutterApp> {
  @override
  Widget build(BuildContext context) {
    print('_MaterialFlutterApp에옴');

    return Scaffold(
          //스캐폴드안 1
          appBar: AppBar(
            title: Text('플러터를 활용하자'),
          ),
        //스캐폴드안2
        floatingActionButton:  FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('버튼클릭');
          },
        ),

        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Icon(Icons.android),
                Text('엿')
              ],
              mainAxisAlignment: MainAxisAlignment.center
              ,
            ),
        ),
        ),
    );
  }
}



