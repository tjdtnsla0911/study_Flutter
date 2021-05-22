import 'package:flutter/cupertino.dart';
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
  var _imagePath; //이미지경로

  @override
  Widget build(BuildContext context) {
    print('위의 fiyExist : $fiyExist');
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

                  ], mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),

                Row(
                  children: <Widget>[
                    Text('우리팀 입니까?'),
                    Checkbox(
                      value : fiyExist,
                      onChanged: (value){
                        print('우리팀입니까의 onChanged의 value : $value');
                        setState(() {
                          fiyExist = value;
                        });
                      },
                    ),
                  ],mainAxisAlignment: MainAxisAlignment.spaceAround,

                ),
/*am: '우리팀', imagePath: 'image/chajangnum.png'));
        //       member.add(Member(name: '윤경환과장님', myTeam: '우리팀', imagePath: 'image/yoonguazhang.png'));
        // member.add(Member(name: '이재황대리님', myTeam: '우리팀', imagePath: 'image/leejaehwangDealinim.png'));s*/
                Row(
                  children: <Widget>[

                    GestureDetector(
                      child: Image.asset('image/chajangnum.png',width: 80, height: 100,fit: BoxFit.fill,),

                      onTap: (){
                        print('onTap에옴');
                        _imagePath = 'image/chajangnum.png';
                      },
                    ),

                    GestureDetector(

                      child: Image.asset('image/yoonguazhang.png', width: 80, height: 100,fit: BoxFit.fill,),
                      onTap: (){
                        print('onTap에옴');
                        _imagePath = 'image/yoonguazhang.png';
                      },
                    ),

                    GestureDetector(
                      child: Image.asset('image/leejaehwangDealinim.png',width: 80, height: 100,fit: BoxFit.fill ,),
                      onTap: (){
                        print('onTap에옴');
                        _imagePath = 'image/leejaehwangDealinim.png';
                      },
                    )

                  ], mainAxisAlignment: MainAxisAlignment.spaceAround,

                ),

                Padding(
                  padding: EdgeInsets.all(15),
                  child: RaisedButton(
                    child: Text('멤버 추가하기', style: TextStyle(color: Colors.white)),

                    onPressed: (){
                      print('Member 추가하기 버튼누름');
                    } ,

                  color: Colors.deepPurpleAccent,

                ),

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

