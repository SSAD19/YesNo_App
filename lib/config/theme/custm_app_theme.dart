import 'package:flutter/material.dart';

class CustomAppTheme {

  static const List<Color> _colorTheme =[
      _customColor, 
      Color.fromARGB(255, 102, 196, 14),
      Color.fromARGB(255, 112, 7, 7),
      Color.fromARGB(255, 3, 149, 222),
      Color.fromARGB(255, 106, 44, 99),
      Color.fromRGBO(218, 108, 35, 1),
      Color.fromARGB(255, 41, 41, 122),
      Color.fromARGB(255, 67, 67, 70),
  ];
  static const Color _customColor = Color.fromARGB(255, 3, 3, 222);

  final int? selectedColor; 
  
  CustomAppTheme({this.selectedColor = 0
  }):assert(selectedColor! >= 0 && selectedColor <= _colorTheme.length -1);


  ThemeData theme(){

  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colorTheme[selectedColor!],

  );

  } 

}