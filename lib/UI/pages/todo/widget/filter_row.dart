import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: .horizontal,
      child: Row(
        spacing: 10,
        children: [
          _buildFilter(isSelected: true, text: '전체'),
          _buildFilter(text: '업무'),
          _buildFilter(text: '개인'),
          _buildFilter(text: '건강'),
        //  _buildFilter(),
        ],
      ),
    );
  }
}

Widget _buildFilter({
  bool isSelected = false,
  String text = '',
}) {
  return Container(
    padding: .symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      borderRadius: .all(.circular(50)),
      color: isSelected ? Colors.deepPurpleAccent : Colors.grey[300]!,
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: .w700,
        color: isSelected ? Colors.white : Colors.black ,
      ),
    ),
  );
}

/*
class FilterRow extends StatefulWidget {
  const FilterRow({super.key});

  @override
  State<FilterRow> createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/
