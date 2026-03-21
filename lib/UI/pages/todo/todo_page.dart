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
              // 임의의 진행률을 표기하는건 쉽겠지?
              // 동적으로 todo list를 관리하는 내부 로직이 있다면 이 창을 만들어야 할 때, 수정해야할 때 가진 목록의 총 개수 중 달성한 것을 계산하여 이 부분을 수정하면 되겠지
              ProgressCard(),
              // TODO: 주제별 항목 (전체, 업무, 개인, 건강)
              // 조건에 따라 이 항목에서 표기될 todolist의 내용이 바뀌기때문에 이벤트가 상단에 있어야하는걸까? 아니면 이벤트 위치와 별개로 수정하는걸까?
              // TODO: 체크박스 시스템 만들기
              // 
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