import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context는 객체
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
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
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {//MyPage위젯의 context와 구분
            return Center(
              child: FlatButton(
                child: Text(
                  'Show me',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(SnackBar(
                    content: Text('Hello'),
                  ));
                },
              ),
            );
          },
        ));
  }
}


//Scaffold.of(context)method: 현재 주어진 context에서 위로 
//올라가면서 가장 가까운 scaffold를 찾아서 반환하라
//Something.of(context)
//Theme.of(context)


/*MyApp->MaterialApp->MyPage->Scaffold->AppBar
MyApp->MaterialApp->MyPage->Scaffold->Center->FlatButton->Scaffold.of(context)->MyPage에서 위로 올라감
따라서 Builder widget 만듬*/