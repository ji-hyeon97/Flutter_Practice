import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//화면 우측 상단 debug 보기 싫을때
      title: 'character introduction',
      home: MySelf(),      
    );
  }
}

class MySelf extends StatelessWidget {
  const MySelf({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar( //앱바
        title: Text("서지현"),
        centerTitle: true, //boolean값... title 가운데 정렬
        backgroundColor: Colors.greenAccent, //appbar 색상
        elevation: 0.0, //appbar가 떠있는 것을 없애줌
      ),
      body: Padding( // 바디 padding 위젯: 특정 거리로 부터 떨어 지기 위함
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),//left, top, right, bottom
        child: Column( //열로 정렬
          //crossAxisAlignment: CrossAxisAlignment.start, -> 시작점 정렬(패딩된 값)
          //mainAxisAlignment: MainAxisAlignment.center,  -> 가운데 정렬을 함 
          children: [
            Center( // 이미지를 가운데로 정렬
            child :CircleAvatar(
              backgroundImage: AssetImage('assets/이즈리얼.png'), //이미지 넣기 assets 파일을 만듬
              radius: 60.0, //이미지 크기
              ),
            ),
            Divider( //선을 그려서 구분
              height: 60.0, //이미지랑 Name 으로 부터 30픽셀씩 떨어짐
              color: Colors.black, //선의 색
              thickness: 0.5, //선의 두께
              endIndent: 30.0, //padding 과정에서 30만큼 떨어뜨려 놓았음
            ),
            Text('Name',
            style: TextStyle(
              color: Colors.white, //글자색
              letterSpacing: 2.0 //글자 간격
             ),
            ),
            SizedBox( //배열의 텍스트 간격을 조절해줌 -> Name, 서지현
              height: 10.0,
            ),
            Text('서지현',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0, //글자 크기
              fontWeight: FontWeight.bold //글꼴
            ),
            ),
            SizedBox( //배열의 텍스트 간격을 조절해줌 
              height: 30.0,
            ),
            Text('대학교',
            style: TextStyle(
              color: Colors.white, //글자색
              letterSpacing: 2.0 //글자 간격
             ),
            ),
            SizedBox( //배열의 텍스트 간격을 조절해줌 
              height: 10.0,
            ),
            Text('단국대학교',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0, //글자 크기
              fontWeight: FontWeight.bold //글꼴
            ),
            ),
            SizedBox( //배열의 텍스트 간격을 조절해줌 
              height: 30.0,
            ),
            Row(children: [ //위젯 가로로 나열 -> Icon, Text 위젯들을 가로로 하기 위해
              Icon(Icons.check_circle_outline), //체크모양의 아이콘
              SizedBox( //Icon과 Text 위젯을 간격을 만들기
                width: 10.0, //가로 간격 = width
              ),
              Text('그날에 난 왜 컴공과를 선택했을까 ㅠㅠ', //텍스트 위젯
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 1.0
              ),
              ),
            ],
            ),
            Row(children: [ //위젯 가로로 나열 -> Icon, Text 위젯들을 가로로 하기 위해
              Icon(Icons.check_circle_outline), //체크모양의 아이콘
              SizedBox( //Icon과 Text 위젯을 간격을 만들기
                width: 10.0, //가로 간격 = width
              ),
              Text('톡만 하면 뭐해 너가 좋아', //텍스트 위젯
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 1.0
              ),
              ),
            ],
            ),
            Row(children: [ //위젯 가로로 나열 -> Icon, Text 위젯들을 가로로 하기 위해
              Icon(Icons.check_circle_outline), //체크모양의 아이콘
              SizedBox( //Icon과 Text 위젯을 간격을 만들기
                width: 10.0, //가로 간격 = width
              ),
              Text('rich doctor poor developer', //텍스트 위젯
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 1.0
              ),
              ),
            ],
            ),
            SizedBox( //배열의 텍스트 간격을 조절해줌 
              height: 30.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/야스오.png'),
                radius: 60.0,
                backgroundColor: Colors.green, //사진의 백그라운드 모습이 없다..
              ),
            )
          ],
        ),
      ),
    );
  }
}
