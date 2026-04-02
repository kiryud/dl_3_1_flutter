import 'package:ex00/UI/pages/todo/bottom_navigation/widget/nav_button.dart';
import 'package:flutter/material.dart';

class BottomNevigation extends StatefulWidget {
  const BottomNevigation({super.key});

  @override
  State<BottomNevigation> createState() => _BottomNevigationState();
}

class _BottomNevigationState extends State<BottomNevigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: .all(5),
      decoration: BoxDecoration(
        borderRadius: .circular(50),
        color: Colors.white,
        border: .all(
          color: Colors.grey[300]!
        )
      ),
      child: Row(
        children: [
          (text: '홈', icon:Icons.home),
          (text: '캘린더', icon:Icons.calendar_month),
          (text: '통계', icon:Icons.bar_chart),
          (text: '프로필', icon:Icons.person),
        ].map(
          (e) => Expanded(
            child: NavButton(
              selected: '홈' == e.text ? true : false,
              icon: e.icon,
              text: e.text
            )
          )
        ).toList(),
          /*
          ...List.generate(
            4,
           (i) => Expanded(child: Container(
            height: 70,
            color: Colors.red,
           )) 
          )
          */
          /*
          Expanded(child: Container()),
          Expanded(child: Container()),
          Expanded(child: Container()),
          Expanded(child: Container()),
          */
      ),
    );
  }
}