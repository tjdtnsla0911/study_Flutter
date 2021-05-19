import 'dart:html';
import 'dart:ui';

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
  String sum = '';

  //여기서 new를 안하는거랑 new TextEdithingController();하는거랑 무슨차이가있을까
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('연습을 위한 이미지 위젯'),

       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.menu),
           onPressed: (){print('버튼클릭');},
         )
         ],


       //  leading: GestureDetector( //얘를 넣으므로 왼쪽에 공백생김
       //    onTap: (){ //메뉴버튼을 눌렀을때 동작하고자하는 코드를 넣을땐 onTap에정의함
       //      print('onTap추가');
       //    },
       //    child: Icon(Icons.menu,), // 메뉴버튼추가 ( Appbar)
       //       
       // ),

      ), drawer: Drawer(
          child: Text('기능미구현중 21_05_18'),
    ), //애가있어야 actions에서 아이콘도생기고 옆으로도움직여짐

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('버튼클릭');
        },
      ),
      
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
                child: TextField(keyboardType: TextInputType.number, controller: value1,
                //여기서 controller에 값을안넣으면 값을 못가져오며
                  //controller에 적을수있는타입은 TextEdithingController이다.

                decoration: InputDecoration(

                  border: OutlineInputBorder(), //요놈이 텍스트박스같은거
                  labelText: '모두힘내요',
                  ),
                ),
              ),//요놈은 디폴트로하면 검은선

              Padding(

                padding: EdgeInsets.only(right: 20, left: 20),

                child: TextField(keyboardType: TextInputType.number,controller: value2,
                    
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      labelText: '사랑해요?',

                    ),
                  ),

              ),

              Padding( //Padding은 children안에 있다.

                padding: EdgeInsets.all(15), //요놈으로크기조절 all을하니까 위아래로 넓어진다!.
                //근데 적힌곳은 사방모든 공간이라고함
                child: Text('인생을 시험하는 버튼!'),

              ),
                // Text('Flutter'),

              RaisedButton
                (onPressed: (){
                    print('버튼클릭');
                    setState(() {
                      print('setState에옴 (button)');
                      print('value1.value.text : ${value1.value.text}');
                      print('value2.value.text : ${value2.value.text}');
                      int result = int.parse(value1.value.text) + int.parse(value2.value.text);
                      print('얻은 result : $result');
                      sum = '$result';
                    });
                },


                child: Text('버튼을눌러봥', style: TextStyle(color: Colors.white),),

                  color: Colors.deepPurple,
              ),


              Padding(

                padding: EdgeInsets.all(15),
                child: Text('결과값 : $sum',
                       style: TextStyle(fontSize: 20),
                  ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),


    );
  }
}
