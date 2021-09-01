/*
state : 어떠한 변화없이 환경이 세팅된 상태
State란 UI가 변경되도록 영향을 미치는 데이터이다
App 수준과 Widget 수준의 데이터가 있다.

stateless widget
- State가 변하지 않는 위젯

hot reload 
widget tree : MyApp -> Scaffold -> AppBar -> Text 설계도 : 스크린에 이 형태로 UI 그려줘
Element tree : 위젯트리의 위젯마다 하나하나 맞대응  
Render : 스크린상의 모든 요소, Element tree와 맞대응

-Reload Vs Rebuild
Reload : 전체적인 frame은 그대로 두고 부수적인 요소들을 바꿈
rebuild : 전체적인 frame이 바뀜

->Element tree의 경우 위젯이 새롭게 추가되더라고 위치나 타입속성 등이
일치하는 경우 link만 update

Container widget<White-> Blue> -> Hot reload -> build method -> Widget tree rebuild
-> Element tree link update -> Element tree info -> Render tree
-> Render object re-rendering
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                Text('You have pushed the button this many times'),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headline4,//display1과 차이점 공부
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counter++;
              print("$counter");
            },
          )),
    );
  }
}

/*
class DialPhone{

  int year;
  DialPhone(){ //생성자
    print("이 전화기는 다이얼을 돌려서 전화를 겁니다.");
  }

  void whenCame(){ //함수
    print("1889년 발명");
  }
}

// 상속 : 부모 클래스의 기능을 사용 + 추가
class ButtonPhone extends DialPhone{ //ButtonPhone클래스는 DialPhone클래스를 상속

  ButtonPhone(){
    print("이 전화기는 버튼을 눌러서 전화를 겁니다.");
  }

  @override
  void whenCame(){
    print("1963년 발명");
  }
}

class SmartPhone extends ButtonPhone{
  String manufacturer;
  String model;

  SmartPhone(String manufacturer, String model, int year){
    this.manufacturer = manufacturer;
    this.model = model;
    this.year = year;
    print("이 전화기는 터치로 전화를 겁니다.");
  }

  @override
  void whenCame(){
    print("1980년 발명");
  }
}

void main(){
  SmartPhone s1 = SmartPhone("제조사 : 삼성","모델명 : 갤럭시",2020);
  print(s1.manufacturer.toString() + " " +s1.model.toString()+ " "+s1.year.toString());
  s1.whenCame();
}
//Smart Phone ) Button Phone ) Dial Phone
*/