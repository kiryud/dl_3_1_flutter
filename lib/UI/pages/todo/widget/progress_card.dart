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
          spacing: 15,
          children: [
            // 오늘의 진행률 텍스트
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text('오늘의 진행률',
                  style: TextStyle(
                    fontWeight: .w700,
                    fontSize: 16,
                  ),
                  ),
                  Text('60%',
                  style: TextStyle(
                    fontWeight: .bold,
                    fontSize: 30,
                  ),),
                ]
              ),
            ),
            // 리니어 프로그래스 인디케이터 (원형은 서큘러 프로그래스 인디케이터겠네)
              // LinearProgressIndicator(),
              // CircularProgressIndicator(),
            SizedBox(
              height: 8,
              child: LinearProgressIndicator(
                value: 0.6,
                borderRadius: .circular(10),
                year2023: false, // 디자인 변경점
                backgroundColor:  Colors.white.withValues(
                  alpha: 0.2,
                ),
                color: Colors.white,
              ),
            ),
            Text('10개 중 6개 완료',
            style: TextStyle(
              color: Colors.white.withValues(
                alpha: 0.6,
              ),
            ),),
          ],
        ),
      ),
    );
  }
}