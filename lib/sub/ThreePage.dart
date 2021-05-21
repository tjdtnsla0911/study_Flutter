import 'package:flutter/material.dart';
import '../member.dart';

class ThreeApp extends StatefulWidget {

  const ThreeApp({Key key}) : super(key: key);
  @override
  _ThreeAppState createState() => _ThreeAppState();
}

class _ThreeAppState extends State<ThreeApp> {
  final nameController = TextEditingController();
  int _radioValue = 0;
  bool fiyExist = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('3번째페이지 공사중',style: TextStyle(fontSize: 15,color: Colors.white),),
          backgroundColor: Colors.black12,
        ),

        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                ),

                Row(
                  children: <Widget>[
                    //value : 인덱스 , groupValue : 그룹화 , onChnged 이벤트처리
                    //groupValue는 같은 그룹에서 하나만 선택가능!
                    Radio(value: 0, groupValue: _radioValue, onChanged: _radioChange),
                    Text(''),
                    Radio(value: 1, groupValue: _radioValue, onChanged: _radioChange,),
                    Text(''),
                    Radio(value: 2, groupValue: _radioValue, onChanged: _radioChange),

                  ],
                ),

                Row(
                  children: <Widget>[
                    Text('우리팀인가?'),

                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
  //bulid밖

  _radioChange(int value) {
    print('_radioChange의 value : $value');
    setState(() {
      _radioValue = value;
    });
  }

}

