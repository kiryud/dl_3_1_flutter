import 'package:ex00/UI/pages/todo/widget/circle_check_box.dart';
import 'package:ex00/UI/pages/todo/widget/process_badge.dart';
import 'package:ex00/enum/process.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});
  

  @override
  Widget build(BuildContext context) {
    final dummy = [
      (title : "운동하기", filter :  "건강", time : DateTime.now(), process : Process.done) , 
      (title : "일하기", filter :  "업무", time : DateTime.now(), process : Process.doing) , 
      (title : "복습하기", filter :  "공부", time : DateTime.now(), process : Process.todo) , 
      ];

    return ListView.separated(
      itemCount: dummy.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12,),
      itemBuilder: (context, index) {
        final data = dummy[index];
        return Container(
          padding: .symmetric(
            horizontal: 20,
            vertical: 18,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: .circular(20),
          ),
          child: Row(
            spacing: 12,
            children: [
            /*  Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.grey[300]!,
                  border: .all(color: Colors.grey),
                ),
              ), */
              CircleCheckBox(value: data.process == Process.done ? true : false),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: .w600,
                      ),
                    ),
                    Text(
                      '${data.filter} ㆍ ${DateFormat('HH:mm').format(data.time)}',
                    //  '${data.filter} ㆍ ${data.time.month}월 ${data.time.day}일 ${data.time.hour}:${data.time.minute}',
                    //  data.filter + 'ㆍ' + data.time.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              ProcessBadge(
                process: data.process,
              ),
            /*
              Container(
                padding: .symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: .all(.circular(50)),
                  color: Colors.deepPurpleAccent,
                ),
                child: Text(
                  'asdf',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .w700,
                    color: Colors.white ,
                  ),
                ),
              ),
            */
            ],
          ),
        );
      },
    );
  }
}
