/*
state 
input data -> Stateful, Stateless 위젯 -> 
build method -> Renders UI
- child 위젯의 생성자를 통해서 데이터가 전달 될 때
- Internal state가 바뀔 때
*/
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
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
            children: [
              Text("You have pushed the button this many times: "),
              Text(
                "$counter",
                style: Theme.of(context).textTheme.headline1,
              ),
              //Checkbox(value: false, onChanged: (bool value) {})
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
              print("$counter");
            });
          },
        ),
      ),
    );
  }
}
