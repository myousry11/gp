import 'package:flutter/cupertino.dart';

class ButtonData {
  int id;
  IconData icon;
  Function toggleButtonOnPress;
  String title;
  String valuePostFix;
  String valuePerFix;
  bool isSelected;

  ButtonData(
      {required this.id,
        required this.icon,
      required this.toggleButtonOnPress,
      required this.title,
      required this.valuePostFix,
      required this.valuePerFix,
      this.isSelected = false});
}
