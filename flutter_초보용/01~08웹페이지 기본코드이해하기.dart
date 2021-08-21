//플러터에서 제일 중요한 개념인 위젯
// 1. flutter에서 위젯이란..? 
// -> UI를 만들고 구성하는 모든 기본 단위 요소
// -> layout요소까지 모두 위젯 ex)center, column, padding

// 2. Stateless widget, Stateful widgets
// -> Stateless widget : 상태변화가 없는 정적인 위젯 
//                     : 스크린 상에서 존재만 할 뿐 아무것도 안 함 + 실시간 데이터 저장 X
// -> Stateful widget : 계속 움직임이나 변화가 있는 위젯
//                    : 사용자의 interaction에 따라 모양 바뀜 + 데이터 받게 될경우 모양 바뀜 ex)checkbox, radiobutton, textfield


// 3. Widget tree
// -> Widget들은 tree구조로 정리 될수 있고 한 Widget에 다른 Widget들이 포함될 수  있다
// -> Widget은 부모 위젯과 자식 위젯으로 구성 + parent Widget은 Widget container라고 부르기도 함
// -> MyApp -> MaterialApp -> MyHomePage -> Scaffold -> AppBar -> text
//                                                   -> Center -> Column -> Image, TextField, Button   

// pubspec.yaml에서 프로젝트의 버젼, 사용환경, dart환경 등 정의


import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // MyApp(): 최상위 위젯, 클래스(첫글자 대문자), 함수(첫글자 소문자)

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App', //앱을 총칭하는 이름
      theme: ThemeData( //디자인
        primarySwatch: Colors.blue//색상 견본 기본값
      ),
    home: MyHomePage(), //앱을 실행시킬 경우 MyHomePage 위젯 내용을 가장 먼저 봄, 바로 Scaffold로 접근을 하여도 됨 -> 유지보수에는 불리  
    );
  }
}

//앱 화면에 보여질 디자인 위젯
class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(//발판을 만듬
      appBar: AppBar(
        title: Text('First App study')
      ),
      body: Center( //중앙에 배치 + 자식위젯 가짐
        child: Column( //세로로 배치
          children: [
            Text('Hello'),
            Text('my name is'),
            Text('서지현')
          ], // 배열 : 세로로 배치될 위젯들
        ),
      ),   
    );
  }
}

