import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Appbar",
      theme: ThemeData(
        primarySwatch: Colors.red
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
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart), 
          onPressed: () { 
            print("Shopping_cart button is clicked");
           },
      ),
       IconButton(
          icon: Icon(Icons.search), 
          onPressed: () { 
            print("Search button is clicked");
           },
      ),
      ],
      ), 
      drawer: Drawer(//사이드 메뉴
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/이즈리얼.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/야스오.png'),
                  backgroundColor: Colors.white,
                ),
                
              ],
              accountName: Text('이즈리얼'),
              accountEmail: Text('sgh9702@naver.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),//곡선율
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){//화면을 클릭한 경우
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
              
            ),
             ListTile(
              leading: Icon(Icons.settings,
              color: Colors.grey[850],
              ),
              title: Text('settting'),
              onTap: (){
                print('setting is clicked');
              },
              trailing: Icon(Icons.add),
              
            ),
             ListTile(
              leading: Icon(Icons.question_answer,
              color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
              
            ),
          ],
        ),
      ),
    );
  }
}

/*
draswer -> Listview -> UserAccountDrawerHeader
1. otherAccountPictures
2. currentAccountPicture
3. accountName
4. accountEmail
5. onDetailsPressed

draswer -> Listview -> ListTile
1. Icon
2. Text
3. onTap
*/