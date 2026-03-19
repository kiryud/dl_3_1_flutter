import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF8B5CF6),
        borderRadius: .all(.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Text('오늘의 진행률'),
                  Text('60%'),
                ]
              ),
            ),
            Text('A'),
            Text('B'),
          ],
        ),
      ),
    );
  }
}