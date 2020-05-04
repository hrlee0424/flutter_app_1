import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}


class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar icon menu'),
        centerTitle: true,
        elevation: 0.0, //앱바의 입체감 없애줌
//        leading: IconButton(      //leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용
//          icon: Icon(Icons.menu),
//          onPressed: () {
//            print('menu button is clicked');
//          },
//        ),
        actions: <Widget>[      //actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping_cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(   //drawer: 왼쪽 메뉴 서랍 나타남
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/flo.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/flo1.jpg'),
//                  backgroundColor: Colors.white,  //이미지가 투명일 경우 배경 흰색 지정
                ),
//                CircleAvatar(
//                  backgroundImage: AssetImage('assets/flo1.jpg'),
////                  backgroundColor: Colors.white,  //이미지가 투명일 경우 배경 흰색 지정
//                )
              ],
              //name, email 은 UserAccountsDrawerHeader 필수임
              accountName: Text('Human'),
              accountEmail: Text('hrlee0424@gmail.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },   //추가 내용을 보여줌
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],),
              title: Text('Home'),
              onTap: (){
                print('Home is Clicked');
              },
              trailing: Icon(Icons.add),  //리스트 오른쪽 아이콘 생성
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],),
              title: Text('Setting'),
              onTap: (){
                print('Setting is Clicked');
              },
              trailing: Icon(Icons.add),  //리스트 오른쪽 아이콘 생성
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is Clicked');
              },
              trailing: Icon(Icons.add),  //리스트 오른쪽 아이콘 생성
            ),
          ],
        ),
      ),
    );
  }
}
