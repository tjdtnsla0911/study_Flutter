import 'package:flutter/material.dart';
import '../member.dart';

class SecondApp extends StatelessWidget {
  // const ThreeApp({Key key}) : super(key: key);
  final List<Member> list; //final 할때에러나는건 밑에 생성자 안만들어서그럼 ㅅ
  SecondApp({Key key, this.list}) : super(key : key);

  //vsync는 메소드쪽에 with로 SingleTicker머시기 안걸면ㅇ러터짐 ( with는 여러 클래스를 재사용할수있는 키워드)


  @override
  Widget build(BuildContext context) {
    print('list= $list');
    print('2번쨰앱에옴');
    return Scaffold(
      appBar: AppBar(
        title: Text('나의 사랑하는 선배님들'),
        backgroundColor: Colors.lime,
      ),
      body: Container(
        child: Center(
          //itemBuilder는 int를 반환한다.
          //BuildContext는 위젯 트리에서 위젯의 위치를 알려주며 int는 아이템순번을 의미한다
          //이코드에서 각각 context와 position을 담았다.
          child:ListView.builder(itemBuilder: (context,position){
            print('우리팀 context : $context');
            print('우리팀 position : $position');

            return GestureDetector( //alert창을 띄우기위해선요놈이필요
              child : Card(
                child: Row(
                  children: <Widget>[
                    
                    Image.asset(
                      list[position].imagePath, //postion이 index로추정됨
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    
                    Text(list[position].name)
                  ],
                ),
              ),
              onTap: (){
                AlertDialog dialog = AlertDialog(
                  content: Text(
                    '이분은 ${list[position].name}',
                    style: TextStyle(fontSize: 30.0,
                    color: Colors.indigo),
                  ),
                );
                showDialog(context: context, builder: (BuildContext context) => dialog);
              },
            );
          },
          itemCount: list.length, // 아이템 개수만큼 스크롤할수있게함
          ),
        ),
      ),
    );
  }
}
