// App bar icon button
// 1. leading : 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
// 2. actions : 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
// 3. onPressed : 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳
// Drawer menu
// Drawer -> ListView -> UserAccountDrawerHeader
// ->currentAccountPicture, accountName, accountEmail, onDetailsPressed, decoration, otherAccountPictures
// Drawer -> ListView -> ListTile ->Icon, Text, onTap

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("서지현"),
        centerTitle: true,
        elevation: 0.0,
        actions: [ //복수의 아이콘 버튼 등을 오른쪽에 배치할 때
          IconButton( //IconButton터치시 반응이 있어야 함
          icon: Icon(Icons.shopping_cart), //쇼핑카트 모양 메뉴
          onPressed: () {  //onPressed -> void function 아이콘버튼 클릭시 반환값이 없는 함수
            print('서지현 shoppingcart button is clicked'); //IconButton을 위한 액션
           },
          ),
          IconButton( //IconButton터치시 반응이 있어야 함
          icon: Icon(Icons.search), //돋보기 모양 메뉴
          onPressed: () {  //onPressed -> void function 아이콘버튼 클릭시 반환값이 없는 함수
            print('서지현 search button is clicked'); //IconButton을 위한 액션
           },
          ),
        ],
      ), 
      drawer: Drawer(//앱바에서 leading으로 icon을 만드는 것이 아니라 앱바 끝나는 곳에서 drawer 기능 추가
      child: ListView(
        padding: EdgeInsets.zero, //여백 X
        children: [ //목록들
          UserAccountsDrawerHeader( //ctrl 위젯클릭후 required 부분 있으면 확인하기, 사용자
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/이즈리얼.png'),
              backgroundColor: Colors.white, //보통 투명 배경이미지인 경우 사용
            ),
            otherAccountsPictures: [ //다른 사용자(계정)
              CircleAvatar( //1번 사용자
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/야스오.png'),
              ),
              CircleAvatar( //2번 사용자
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/야스오.png'),
              )
            ],
            
            accountName:  Text("서지현"), //UserAccountsDrawerHeader 위젯을 필수 요소
            accountEmail: Text("sgh9702@naver.com"),//UserAccountsDrawerHeader 위젯의 필수 요소
            onDetailsPressed: (){ //화살표기능 부여
              print("arrow is clicked"); //액션
            },
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0), //왼쪽 곡선율 지정
                bottomRight: Radius.circular(20.0) //오른쪽 곡선율 지정
              )
            ),
          ),
          ListTile( //ListTile
            leading: Icon(Icons.home, //집 모양 아이콘 , 왼쪽 시작하는 지점(leading)
            color: Colors.grey[850], //진하게
            ),
            title: Text('Home'), //제목
            onTap: (){ //액션을 주어야 함
              print('Home is clicked');
            },
            trailing: Icon(Icons.add), //오른쪽 끝나는 지점(trailing)
          ),
           ListTile( //ListTile
            leading: Icon(Icons.settings, //세팅 모양 아이콘 , 왼쪽 시작하는 지점(leading)
            color: Colors.grey[850], //진하게
            ),
            title: Text('setting'), //제목
            onTap: (){ //액션을 주어야 함
              print('setting is clicked');
            },
            trailing: Icon(Icons.add), //오른쪽 끝나는 지점(trailing)
          ),
           ListTile( //ListTile
            leading: Icon(Icons.question_answer, //집 모양 아이콘 , 왼쪽 시작하는 지점(leading)
            color: Colors.grey[850], //진하게
            ),
            title: Text('Q&A'), //제목
            onTap: (){ //액션을 주어야 함
              print('Q&A is clicked');
            },
            trailing: Icon(Icons.add), //오른쪽 끝나는 지점(trailing)
          ),
        ],
      ),
      ),
    );
  }
}
