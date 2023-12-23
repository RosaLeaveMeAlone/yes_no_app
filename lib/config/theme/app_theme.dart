import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.purple,
  Colors.green,
  Colors.blue,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;

  const AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0 && selectedColor < _colorThemes.length, 'Colors must be between 0 and ${_colorThemes.length - 1}}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark
      );
  }
}
