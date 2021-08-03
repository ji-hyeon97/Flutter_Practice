import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//argument들을 가짐
      title: 'Charactor card',//앱을 총징하는 이름
      theme: ThemeData(
        primarySwatch: Colors.blue//색상견본
      ),
    home: MyCard(),//화면에 보여짐       
    );
  }
}
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(//발판을 만듬
      appBar: AppBar(
        title: Text('BBANTO'),//앱화면
        centerTitle:true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,        
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
      ),     
    );
  }
}
