/*
state 
input data -> Stateful, Stateless 위젯 -> 
build method -> Renders UI
- child 위젯의 생성자를 통해서 데이터가 전달 될 때
- Internal state가 바뀔 때

Stateful Widget 심화
1. Stateful widget은 widget을 상속하고 있어서 실제로는 Stateless와 같은 형태이지만
2개의 클래스를 가짐으로써 하나는 정적으로 하나는 동적으로 사용하는 클래스가
연동되어 동적인 상태를 만듬
2. Stateful을 상속받는 클래스와 State를 상속 받는 클래스가 필수적으로 필요
3. Stateful은 정적, State는 동적 클래스이며 State가 build method를 가짐
4. setState을 호출해 rebuild 하도록 할 수 있다
*/
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text(
                  '$counter',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: (){
                        setState(() {
                          counter++;
                          print("$counter");
                        });
                      }),
                  SizedBox(width: 20,),
                  FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          counter--;
                          print("$counter");
                        });
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}