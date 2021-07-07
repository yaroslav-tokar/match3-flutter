import 'package:flutter/cupertino.dart';



class HexColor extends Color {
  static int _getColorFromStrHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) hexColor = 'ff' + hexColor;
    return int.parse(hexColor, radix: 16);
  }

  HexColor(String hexColor) : super(_getColorFromStrHex(hexColor));
}
