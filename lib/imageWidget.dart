import 'package:flutter/cupertino.dart';
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
  String num = '';

  TextEditingController value1 = new TextEditingController();
  TextEditingController value2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('연습을 위한 이미지 위젯')),

      body: Container(
        child: Center(
          child: Column(
            children: <Widget>
              [
              Padding(
                padding: EdgeInsets.only(bottom: 30),

                child : Image.asset('image/oohana.png',width: 200, height: 200, fit: BoxFit.fill,),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextField(keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  border: OutlineInputBorder(), //요놈이 텍스트박스같은거
                  labelText: '술값일 경우 인원적는곳',
                  ),
                ),
              ),//요놈은 디폴트로하면 검은선

              Padding(

                padding: EdgeInsets.only(right: 20, left: 20),

                child: TextField(keyboardType: TextInputType.number,controller: value2,
                    
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      labelText: '술값일경우 얼마나왓니?',

                    ),
                  ),

              ),

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
