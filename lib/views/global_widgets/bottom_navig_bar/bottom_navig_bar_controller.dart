import 'package:flutter/material.dart';

class BottomNavigBarController {
  final pageSelectedNotifier = ValueNotifier<int>(0);
  int get pageSelected => pageSelectedNotifier.value;
  set pageSelected(int newPage) => pageSelectedNotifier.value = newPage;
}
