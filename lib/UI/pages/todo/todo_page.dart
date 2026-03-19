import 'package:ex00/UI/pages/todo/widget/title_content.dart';
import 'package:ex00/UI/pages/todo/widget/progress_card.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Scaffold(
          body: Column(
            children: [
              // 타이틀 상단 영역
              
              Container(
                padding: .all(10),
                child: Header(),
              ),
              // TODO: 오늘의 진행률
              ProgressCard(),
              // TODO: 주제별 항목 (전체, 업무, 개인, 건강)
              // TODO: 체크박스 시스템 만들기
              Row(
                children: [
                  Checkbox(value: false, onChanged: (True) {}),
                ],
              )
            ],
          )
        ),
      )
    );
  }
}