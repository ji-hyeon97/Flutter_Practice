// Container Widget
// Containers with no children try to be as big as possible
// Containers with children size themselves to their children
// Container widget has only one child
// Margin : 위젯의 바깥쪽 간격 조절
// padding : 위젯의 안쪽 간격 조절
// multi child 위젯, single child 위젯을 같는 위젯 알아두기
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home:MyPage()
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: SafeArea( //텍스트 위젯을 화면 안으로 들어오게 하기 위함
        child: Container(
          color: Colors.blue[200],
          width: 100, //가로
          height: 100, //높이
          //margin: EdgeInsets.all(20), //Container를 화면가장자리 로부터 20픽셀씩 떨어뜨림
          margin: EdgeInsets.symmetric(
            vertical: 110, //수직선
            horizontal: 10 //수평선
          ),
          padding: EdgeInsets.all(20), //픽셀값이 40과 같이 큰경우는 텍스트 위젯의 크기가 작아짐
          child: Text('Hello'), //Container with Text widget !
        ),
      )      
    );
  }
}
