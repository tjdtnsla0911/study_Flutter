import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget {
  const ImageWidgetApp({Key key}) : super(key: key);

  static const String _title = 'Widget Example';

  @override
 State<StatefulWidget> createState(){
    return _ImageWidgetAppState();
  }
}

class _ImageWidgetAppState extends State<ImageWidgetApp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('연습을 위한 이미지 위젯')),

      body: Container(
        child: Center(
          child: Column(
            children: <Widget>
              [
                Image.asset('image/oohana.png',width: 200, height: 200, fit: BoxFit.fill,),
                TextField(), //요놈이 검은선

              Padding( //Padding은 children안에 있다.

                padding: EdgeInsets.all(15), //요놈으로크기조절 all을하니까 위아래로 넓어진다!.
                //근데 적힌곳은 사방모든 공간이라고함
                child: Text('플러터'),

              ),
                // Text('Flutter'),
                RaisedButton(onPressed: (){
                  print('버튼클릭');
                }),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),


    );
  }
}
