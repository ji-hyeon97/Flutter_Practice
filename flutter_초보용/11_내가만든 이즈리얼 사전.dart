import 'package:flutter/material.dart';

 void main() => runApp(MyApp());

 class MyApp extends StatelessWidget { 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'League Of Legend',
       home:Grade(),       
     );
   }
 }
 class Grade extends StatelessWidget {
   const Grade({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.amber[800],
       appBar: AppBar(
         title:Text('League of Legend'),
         backgroundColor: Colors.amber[700],
         centerTitle: true,
         elevation: 0.0,
     ),
     body: Padding(
       padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0), 
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,//왼쪽정렬, column뒤에작성
         children: <Widget> [
           Center(
             child: CircleAvatar(
               backgroundImage: AssetImage('assets/이즈리얼.png'),
               radius: 60.0,
             ),
           ),
           Divider(
             height: 60.0,//위아래 30픽셀씩 떨어짐
             color: Colors.grey[850] ,
             thickness: 0.5,
             endIndent: 30.0,//선이 끝에서 얼마나 떨어지는가
           ),
           Text('NAME',
           style: TextStyle(
             color:Colors.white,
             letterSpacing: 2.0,
             ),
           ),
           SizedBox(
             height: 10.0,//간격
           ),
           Text('이즈리얼',
           style: TextStyle(
             color: Colors.white,
             letterSpacing: 2.0,
             fontSize: 28.0,
             fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(
             height: 30.0,
           ),
           Text('이즈리얼 POWER LEVEL',
           style: TextStyle(
             color:Colors.white,
             letterSpacing: 2.0,
             ),
           ),
           SizedBox(
             height: 10.0,//간격
           ),
           Text('30',
           style: TextStyle(
             color: Colors.white,
             letterSpacing: 2.0,
             fontSize: 28.0,
             fontWeight: FontWeight.bold
           ),
           ),
           SizedBox(
             height: 30.0,
           ),
           Row(
             children: <Widget>[
               Icon(Icons.check_circle_outline),
               SizedBox(
                 width: 10.0,
               ),
               Text('스킬은 Q-E-W-R 순으로 마스터 해줍니다.',
               style: TextStyle(
                 fontSize: 16.0,
                 letterSpacing: 1.0,
               ),
               )
             ],
           ),
           Row(
             children: <Widget>[
               Icon(Icons.check_circle_outline),
               SizedBox(
                 width: 10.0,
               ),
               Text('스펠은 점멸고정에 회복이나 정화를 들어줍니다.',
               style: TextStyle(
                 fontSize: 16.0,
                 letterSpacing: 1.0,
               ),
               )
             ],
           ),
           Row(
             children: <Widget>[
               Icon(Icons.check_circle_outline),
               SizedBox(
                 width: 10.0,
               ),
               Text('룬은 정복자-침착-칫빛 길-최후의 저항을 가줍니다.',
               style: TextStyle(
                 fontSize: 16.0,
                 letterSpacing: 1.0,
               ),
               )
             ],
           ),
           Row(
             children: <Widget>[
               Icon(Icons.check_circle_outline),
               SizedBox(
                 width: 10.0,
               ),
               Text('템트리는 정수약탈자-마나무네-드락사르의 황혼검을 가줍니다.',
               style: TextStyle(
                 fontSize: 15.0,
                 letterSpacing: 1.0,
               ),
               )
             ],
           ),
           Center(
             child: CircleAvatar(
               backgroundImage: AssetImage('assets/야스오.png'),
               radius: 40.0,
               backgroundColor: Colors.amber[800],
             ),
           )
         ],
       ),
     ),
     );
   }
 }