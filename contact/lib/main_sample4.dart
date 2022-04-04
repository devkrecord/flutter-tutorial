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
      body:Container(
        
        height: 150,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset('camera.jpg', width:150,),
            Container(
              width:300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('카메라 팝니다'),
                  Text('금호동 3가'),
                  Text('7,000원'),
                  Text('아이콘이랑 글자'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite),
                      Text('7'),
                    ],
                  )
                ],
              ),
              
            )
          ],
        ),
       )
      )
    );
  }
}
