import 'package:flutter/material.dart';
import 'imageWidget.dart';
import 'sub/secondPage.dart';
import 'sub/ThreePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePageState(),
      // home: MaterialFlutterApp(),
    );
  }
}

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({Key key}) : super(key: key);

  @override
  _MyHomePageStateState createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<MyHomePageState> with SingleTickerProviderStateMixin{

  TabController controller;
  @override
  void initState()  {
    super.initState();
    controller = TabController(length: 3,vsync: this); //length는 몇개탭을 만들지지정하고
    //vsync는 탭이동시 콜백함수를 어디서 처리할지 쓰는놈
    //vsync는 메소드쪽에 with로 SingleTicker머시기 안걸면ㅇ러터짐 ( with는 여러 클래스를 재사용할수있는 키워드)

  }
  //소멸시키는놈
  @override
  void dispose() {
    print('dispose에서 완전 소멸시킴');
    controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView( //요놈이으면 슬라이스로가능
        children: <Widget>[ImageWidgetApp(),SecondApp(),ThreeApp()],
        //ThreeApp()
        controller: controller,
      ),
      bottomNavigationBar: TabBar(tabs: <Tab>[
        //여깃 페이징바 생기는데 위에 개수랑 틀리면터짐
        Tab(icon: Icon(Icons.looks_one_outlined , color: Colors.cyan)),
        Tab(icon: Icon(Icons.looks_two_outlined , color: Colors.cyan)),
        Tab(icon: Icon(Icons.looks_two_outlined , color: Colors.cyan)),
        // Tab(icon: Icon(Icons.looks_two_outlined , color: Colors.cyan)),
        // Tab(icon: Icon(Icons.looks_3_outlined , color: Colors.cyan)),
      ],controller: controller,),

    );
  }


}






