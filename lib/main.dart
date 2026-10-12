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
            color: Color(0xFFF99231),   // 색상
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,   // 가로 중앙 정렬
            // 여러 위젯을 입력할 수 있는 children 매개변수
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,   // 세로 중앙 정렬
                children: [
                  // Image 위젯
                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                  ),
                  // 동그라미 형태의 로딩 에니매이션
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Colors.white,   // 색상
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}