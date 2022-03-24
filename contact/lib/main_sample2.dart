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
      home: Scaffold(
        appBar: AppBar(title:Text('앱임')),
        body: SizedBox(
          child: Text('안녕하세요',
            style: TextStyle( color: Colors.red ),
          ),
        )
      )
    );
  }
}