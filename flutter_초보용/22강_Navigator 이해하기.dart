// Navigator
// 1. Route의 개념
// 2. Navigator의 정의와 push, pop 함수, stack 자료구조
// 3. MaterialPageRoute 위젯과 context
// 4. 페이지 이동 기능 구현 완성

// route : 스마트 폰 상에서 보여지는 하나의 페이지
// navigator : 모든 앱페이지 관리 -> stack의 자료구조 -> push, pop 메소드 제공
// push : 데이터 쌓기, pop : 데이터 빼기, 선입후출

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Materialapp위젯 안에 route는 child로 생성되어야 함
        title: 'Navigator',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('서지현'),
      ),
      body: Center(
        child: TextButton(
          child: Text("Go to the Second page"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
          ),
          onPressed: () {
            Navigator.push(context2, MaterialPageRoute(
              builder: (context)=>SecondPage())); 
              //second페이지는 first페이지 위에 놓인다는 개념 : push
              //context가 필요한 이유 : FirstPage 위에 SecondPage를 쌓을 경우 FirstPage의 위치를 정확히 알기 위함 
              //MaterialPageRoute : build 생성자 불러옴(requird argument) 안전장치 역할
              //안드로이드 fade in, out 효과 : 위로 올라가거나 내려감
              //ios fade in, out 효과 : 좌우로 이동함
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('서지현2'),
      ),
      body: Center(
        child: TextButton(
          child: Text("Go to the First page"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
          ),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
