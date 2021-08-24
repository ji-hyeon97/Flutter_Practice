import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //화면 정중앙에 위치시킴
          children: [
            ElevatedButton( //RaisedButton -> ElevatedButton
              child: Text('Go to ScreenB'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent)),
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
            ),
            SizedBox( //배열의 텍스트 간격을 조절해줌 -> Name, 서지현
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Go to ScreenC'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent)),
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
            ),
          ],
        ),
      ),
    );
  }
}
