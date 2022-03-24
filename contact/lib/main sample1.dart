import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // runApp 앱 구동 
}

class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp 을 쓰면 Material ui 를 사용할 수 있다. (구글 디자인), 커스텀마이징도 가능
    return MaterialApp(
      //home: Text('안녕')
      //home: Icon(Icons.shop)
      // home: Image.asset('image.jpeg')
      // home: Center(
      //   child: Container( width: 50, height:50, color: Colors.blue
      //   )
      // )

      home: Scaffold(
        appBar: AppBar(title:Text('앱임')),
        body: Text('안녕'),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox( //width, height, child 만 필요할 때 SizedBox 써주는게 좋음 container보다 가벼움
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),  
        ),
      )
    );
  }
}