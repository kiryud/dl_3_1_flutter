import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12,),
      itemBuilder: (context, index) {
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
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.grey[300]!,
                  border: .all(color: Colors.grey),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      '운동 $index분',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: .w600,
                      ),
                    ),
                    Text(
                      '건강ㆍ오후 00:0$index',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
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
            ],
          ),
        );
      },
    );
  }
}
