import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // runApp 앱 구동
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(        
        appBar: AppBar(),
        // body:ShopItem()
        // )
        // body: ListView( //ListView 사용하면 스크롤바 생김
        //   children: [
        //     Text('안녕'),
        //     Text('안녕'),
        //     Text('안녕'),
        //     Text('안녕'),
        //     Text('안녕'),
        //     Text('안녕'),
        //     Text('안녕'),
        //   ],
        // )
        body: ListView(),
      ),
    );
  }
}

// custom widget: 레이아웃용 코드들이 너무 길어진다면 ? 커스텀 위젯을 이용하여 축약 가능
/*

  나만의 위젯 만드는 방법  (커스텀 위젯은 class로 만듭니다)
  1. 빈공간에 stless 입력 후 tab 누르기 
  2. class 작명
  3. retrun 옆에 축약할 레이아웃 넣기

 (주의) 아무거나 다 커스텀위젯화 x, 재사용 많은 UI들을 커스텀 위젯화 o

 */
class ShopItem extends StatelessWidget {
  const ShopItem({ Key? key }) : super(key: key); // class에 어떤 파라미터를 넣을 수 있는지 정의하는 부분

  @override
  Widget build(BuildContext context) {
    // return 값으로 축약 코드 담기
    return SizedBox( 
      child: Text('안녕'),
    );
  }
}

// 변수, 함수 문법으로도 축약 가능
// 변하지않는 UI들은 변수 함수로 축약해도 상관없음 (ex. logo , 상단바, 하단바)
var a =  SizedBox( 
  child: Text('안녕'),
);

class ListView extends StatelessWidget {
  const ListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.man),
              Text('홍길동'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.woman),
              Text('홍길동1'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.woman),
              Text('홍길동2'),
            ],
          ),
        ],
      ), 
    );
  }
}
