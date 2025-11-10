import 'package:flutter/material.dart';

const colorList =<Color>[
  Colors.blue,
  Colors.lightGreen,
  Colors.cyanAccent,
  Colors.redAccent
];

class AppTheme{
  final int selectedColor;

  AppTheme({this.selectedColor = 0}):
  assert(selectedColor >= 0,"El valor de seleccionado debe de ser mayo o igual que 0"),
  assert(selectedColor < colorList.length ,"El valor seleccionado debe de menor que ${colorList.length - 1} ");

  ThemeData getTheme() =>  ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
  );



}

