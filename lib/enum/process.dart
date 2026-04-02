import 'package:flutter/material.dart';

enum Process {
  todo, doing, done
}

extension ProcessExtension on Process {

  Color get primaryColor => switch(this) {
    .todo => Color(0xfff472b6),
    .doing => Color(0xff14b8a6),
    .done => Color(0xff8b5cf6),
  };

  Color get secondaryColor => switch(this) {
    .todo => Color(0x208b5cf6),
    .doing => Color(0x2014b8a6),
    .done => Color(0x20F472B6),
  };

  String get title => switch(this) {
    .todo => '예정',
    .doing => '진행중',
    .done => '완료',
  };
}

/*
  {
    /*
    if (this == .todo)
      return Color(0x208b5cf6);
    else if (this == .doing)
      return Color(0x2014b8a6);
    else if (this == .done)
      return Color(0x20F472B6);
    
    return Colors.white;
    */
    /*
    return this == .todo 
    ? Color(0x208b5cf6) 
    : this == .doing 
    ? Color(0x2014b8a6) 
    : Color(0x20F472B6);
    */
  }
*/
