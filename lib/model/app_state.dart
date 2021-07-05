import 'package:flutter/material.dart';

class AppState {

  late double sliderFontSize;
  late bool bold;
  late bool italic;


  AppState({
    required this.sliderFontSize, this.bold = false, this.italic = false
  });

  AppState.fromAppState(AppState another) {
    sliderFontSize = another.sliderFontSize;
    bold = another.bold;
    italic = another.italic;
  }

  double get viewFontSize => sliderFontSize * 30;

}