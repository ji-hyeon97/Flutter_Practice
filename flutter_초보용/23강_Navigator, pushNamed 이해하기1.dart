import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';


// 멀티페이지 이동기능 : initialRoute, routes
// Map 자료구조
// Key : Value가 1:1로 대응됨 String : Widgetbuilder <Material App의 router>
  
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', //멀티페이지인 경우 home -> initialRoute, 처음으로 보여질 route이름 : '/'
      routes: { // map ->모든 라우트에 키 값을 부여 : build함수
        '/':(context)=>ScreenA(),
        '/b':(context)=>ScreenB(),
        '/c':(context)=>ScreenC()
      },   
    );
  }
}