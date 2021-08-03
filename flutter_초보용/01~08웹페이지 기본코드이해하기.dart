import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//argument들을 가짐
      title: 'First app',//앱을 총징하는 이름
      theme: ThemeData(
        primarySwatch: Colors.blue//색상견본
      ),
    home: MyHomePage(),//화면에 보여짐       
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(//발판을 만듬
      appBar: AppBar(
        title: Text('First app'),//앱화면
      ),
      body: Center(//중앙
        child: Column(//세로 배치하는 기능
          children: <Widget>[
            Text('hello'),
            Text('hello'),
            Text('hello')
          ],//괄호안에 세로로 배치될 내용 넣음
        ),
      ),
    );
  }
}
