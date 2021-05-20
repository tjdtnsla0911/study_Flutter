import 'package:flutter/material.dart';

class Member{
  String name;
  String myTeam; //우리팀인가
  String imagePath;
  bool flyExist = false;
 // @required 에너테이션은 함수를 호출할때 꼭 전달해야하는 값이란뜻

  Member({
    @required this.name,
    @required this.myTeam,
    @required this.imagePath,
    this.flyExist,
  });// 강한가?

}