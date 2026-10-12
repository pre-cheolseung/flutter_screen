import 'package:flutter/material.dart';

void main() {
  runApp(FlutterScreen());   // FlutterScreen 위젯을 첫 화면으로 지정
}

class FlutterScreen extends StatelessWidget {   // StatelessWidget 선언
  @override
  Widget build(BuildContext context) {   // 위젯의 UI 구현
    return MaterialApp(
      home: Scaffold(
        body: Container(   // 컨테이너 위젯
          // 컨테이너를 디자인하는 클래스
          decoration: BoxDecoration(
            color: Colors.orange,   // 색상
          ),
          child: Center(
            child: Text('Flutter Screen'),
          ),
        ),
      ),
    );
  }
}