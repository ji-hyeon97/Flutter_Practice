// SnackBar and Toast message
// 1. 빌드 위젯없이 SnackBar 만들기
// 2. Toast message 구현하기

// MyPage(context1) -> Scaffold -> MySnackBar(context2) -> Center -> FlatButton -> Scaffold.of(context2) -> MySnackBar(context2) -> Scaffold
//SnackBar은 flutter에 내장되어 있는 반면 toast에는 없기 때문에 외부 라이브러리를 사용해야 함
// flutter toast library를 import 해주어야 함
// pubspec.yaml 파일에 fluttertoast: ^8.0.7 작성해서 flutter toast 설치 2021.08.23기준 최신 버전


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; 

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
      body: Center(
        child: TextButton(
          style: ButtonStyle( //버튼의 색을 정하는 위젯
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
          onPressed: (){
            flutterToast(); //Toast message는 위젯과는 상관없으므로 함수를 만듬
          },
          child: Text('Show Me the Money')),
      ),
    );
  }
}

void flutterToast(){ 
  Fluttertoast.showToast(msg: "10000",
  gravity: ToastGravity.BOTTOM, //Toast메시지의 위치 지정
  backgroundColor: Colors.blueAccent,
  fontSize: 20.0,
  textColor: Colors.white,
  toastLength: Toast.LENGTH_LONG
  );
}