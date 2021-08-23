// BuildContext와 SnackBar
// Snack bar : 스크린 하단에 간단한 메시지 남기는 것

// BuildContext : 1번째 정의 - Widget tree에서 현재 Widget의 위치를 알 수 있는 정보
// Widget build(BuildContext context) {
// return Scaffold()}
// build함수는 Scaffold함수를 반환 -> context : 위젯트리상 어디에 위치하는 가? 확인
// BuildContext : 2번째 정의 - 각각의 위젯은 BuildContext를 가지고 있고, 이 BuildContext는 stateless 위젯이나
// state 빌드 메서드에 의해서 반환된 위젯의 부모가 된다
// Scaffold위젯이 현재 위젯상에서 어디에 위치하고 있는지 알기 위해 Scaffold가 가진 context를 참조하는 것이
// 상식적으로 바람직 하지만 Scaffold내 위치정보를 전혀 가지지 않는다
// 해결책 : Scaffold위젯 밑에서 build()으로 무엇인가 위젯을 반환하면 부모인 Scaffold위젯의 진짜 context를 물려받을수 있다.
// Scaffold.of(context) method : 현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환 ->ScaffoldMessenger.of()로 바뀜 .of()의 기능(거슬러 올라가기) -> SnackBar구현 가능
// 계층적인 구조
// MyApp -> MaterialApp -> MyPage -> Scaffold -> Center -> FlatButton -> Scaffold.of(context) -> MyPage
// 해결책 : MyPage -> Scaffold -> Builder -> Center -> FlatButton -> Scaffold.of(context) -> Builder -> Scaffold

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Snack Bar',
        theme: ThemeData(primarySwatch: Colors.green),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { //context는 Scaffold정보가 아닌 MyPage의 정보 가짐
    return Scaffold(
        appBar: AppBar(
          title: Text('서지현'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) { //MyPage와 구분하기 위해
            return Center(
              child: TextButton(
                //FlatButton -> TextButton으로 변경됨
                child: Text('Hello World',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    //버튼의 색을 정하는 위젯
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () { //클릭할 경우
                  //Scaffold.of -> ScaffoldMessenger.of로 변경됨
                  ScaffoldMessenger.of(ctx).showSnackBar( //Build함수내 인스턴스를 ctx로 했음.. showSnackBar: 함수
                      SnackBar(content: Text("Hello")
                          ));
                },
              ),
            );
          },
        ));
  }
}
//Widget Inspector로 계층간의 구조를 시각적으로 확인 가능

// build를 하지 않고 SnackBar을 구현하는 방법
/*
// SnackBar and Toast message
// 1. 빌드 위젯없이 SnackBar 만들기
// 2. Toast message 구현하기

// MyPage(context1) -> Scaffold -> MySnackBar(context2) -> Center -> FlatButton -> Scaffold.of(context2) -> MySnackBar(context2) -> Scaffold

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context는 객체
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('서지현'),
        centerTitle: true,
      ),
      body: MySnackBar(), //새로운 custom 위젯
    );
  }
}

class MySnackBar extends StatelessWidget {
  //MySnackBar 위젯을 만듬
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Show Me the Money'),
        style: ButtonStyle( //버튼의 색을 정하는 위젯
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('10000원',
              textAlign: TextAlign.center, //텍스트를 중앙으로
              style: TextStyle(
                color: Colors.white
              ),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000), //SnackBar 시간 1초
              ),
              );
        },
      ),
    );
  }
}
*/
