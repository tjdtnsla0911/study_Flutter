

import 'dart:ui';
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

  List _buttonList = ['더하기','빼기','곱하기','술값계산'];
  List<DropdownMenuItem<String>> _dropDownItems = new List();
  String _buttonText;
  bool test = false; //이놈으로 술값계산인지 검사

  @override
  void initState() {
    super.initState();
    print('초기화됨');
    for(var item in _buttonList){
      print('initState의 item : $item');
      _dropDownItems.add(DropdownMenuItem(value: item, child: Text(item),));
      print('들어간후 -dropDownItems : $_dropDownItems');
    }
    _buttonText = _dropDownItems[0].value;

  }

  //여기서 new를 안하는거랑 new TextEdithingController();하는거랑 무슨차이가있을까
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();

  var dateTime = new DateTime.now();




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('여백의 미'),

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
          child: Column(
            children: [Text('기능 미구현중 빠른시일내로하겠습니다. \n'),
                       Text('2021년5월19일')],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
    ), //애가있어야 actions에서 아이콘도생기고 옆으로도움직여짐

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('버튼클릭');
        },
      ),
      
      body: Container(
        child: Center(
          // child: Card(
            child:  Column( //Column 이나 Row Widget은 Size넘어가면 Boom됨 ㅅㅂ
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>
              [
              Padding(

                padding: EdgeInsets.only(bottom: 30),

                child : Image.asset('image/kotlin.png',width: 200, height: 200, fit: BoxFit.fill,),
              ),

              Padding(

                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextField(keyboardType: TextInputType.number, controller: value1,
                //여기서 controller에 값을안넣으면 값을 못가져오며
                  //controller에 적을수있는타입은 TextEdithingController이다.

                decoration: InputDecoration(

                  border: OutlineInputBorder(), //요놈이 텍스트박스같은거
                  labelText: test ? '마신인원을 적으시오': '숫자만 가능해용',
                  ),
                ),
              ),//요놈은 디폴트로하면 검은선

              Padding(

                padding: EdgeInsets.only(right: 20, left: 20),

                child: TextField(keyboardType: TextInputType.number,controller: value2,
                    
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      labelText:
                      test ? '나온 술값을 적으세요' : '여기도 숫자만!',

                    ),
                  ),

              ),

              Padding( //Padding은 children안에 있다.

                padding: EdgeInsets.all(15), //요놈으로크기조절 all을하니까 위아래로 넓어진다!.
                //근데 적힌곳은 사방모든 공간이라고함
                child: Text(
                    '최초접속시간 : $dateTime'
                ),

              ),
                // Text('Flutter'),

              RaisedButton
                (onPressed: (){
                    print('버튼클릭');
                    setState(() {
                      print('setState에옴 (button)');
                      print('value1.value.text : ${value1.value.text}');
                      print('value2.value.text : ${value2.value.text}');
                      var value1Int = int.parse(value1.value.text);
                      var value2Int = int.parse(value2.value.text);
                      var result;
                    //  List _buttonList = ['더하기','빼기','곱하기','술값계산'];
                      if(_buttonText == '더하기'){
                        result = value1Int + value2Int;
                      }else if(_buttonText == '빼기'){
                        result = value1Int - value2Int;
                      }else if(_buttonText == '곱하기'){
                        result = value1Int * value2Int;
                      }else if(_buttonText == '술값계산'){
                        result = (value2Int / value1Int).floor();

                      }
                      print('얻은 result : $result');
                      sum = '$result';
                    });
                },


                // child: Text('버튼을눌러봥', style: TextStyle(color: Colors.white),),
                child:
                    Column(
                        children: [
                          Icon(Icons.android_rounded, color: Colors.white,),
                          Text('$_buttonText',style: TextStyle(color: Colors.yellow, fontSize: 20),),
                        ],

                    ),

                  color: Colors.deepPurple,
              ),

              Row(
                children: [
                  Padding(

                    padding: EdgeInsets.all(20),
                    child: test ? Text('       마신인원 : ${value1.value.text} 명,  \n 1인당금액 : $sum 원'
                    ,style: TextStyle(fontSize: 20, color: Colors.blueAccent),)
                       : Text('결과값 : $sum',
                         style: TextStyle(fontSize: 20),),
                  ),
                    ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),

                Padding(
                  padding: EdgeInsets.all(15),
                  child: DropdownButton(items:_dropDownItems, onChanged: (value){

                    setState(() {
                      print('드롭다운 바뀌면서 value : $value');
                      if(value == '술값계산'){
                        test = true;
                      }else{
                        test =false;
                      }
                      _buttonText = value;
                    });

                  },value : _buttonText), //다운버튼

                ),
            ],

          ), //여기밑에하나추가해라

        ),
        ),
      // ),


    );
  }
}
