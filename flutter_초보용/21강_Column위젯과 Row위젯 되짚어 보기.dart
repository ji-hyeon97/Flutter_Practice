// Container Widget
// Containers with no children try to be as big as possible
// Containers with children size themselves to their children
// Container widget has only one child
// Margin : 위젯의 바깥쪽 간격 조절
// padding : 위젯의 안쪽 간격 조절
// multi child 위젯(Row,Column), single child 위젯(Container)을 같는 위젯 알아두기

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyApp',
        theme: ThemeData(primarySwatch: Colors.green),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: SafeArea(
          //텍스트 위젯을 화면 안으로 들어오게 하기 위함
          child: Center(
              /*
              child: TextButton(
                
            onPressed: () {},
            child: Text('Flat Button'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)),
          )
          */
              child: Column( //Row위젯도 사용해보기
                //crossAxisAlignment: CrossAxisAlignment.end,//가로축 정렬
                crossAxisAlignment: CrossAxisAlignment.stretch, //세로축으로 쭉 뻗게 됨
                  //verticalDirection: VerticalDirection.up, // 3 -> 2 -> 1 순서로 됨
                  //mainAxisAlignment: //세로정렬
                      //MainAxisAlignment.center, //children의 세로축 위치를 조절
                      //MainAxisAlignment.spaceEvenly, //container가 같은 간격을 두고 정렬
                      //MainAxisAlignment.spaceBetween, //상 중 하 로 배치됨
                    
                  children: [
            //column위젯 : Conatainer위젯 3개
            Container(
              //Container 위젯 : Text 위젯 1개
              //width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            SizedBox( //Container 간의 간격을 띄우기
              height: 30.0, //Column 위젯인 경우
              //width: 30.0, //Row 위젯인 경우
            ),
            Container(
              //width: 200,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              //width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
            Container(
              width: double.infinity,
            )
          ]))),
    );
  }
}
