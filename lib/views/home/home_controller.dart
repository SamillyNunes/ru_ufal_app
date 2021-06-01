import 'package:flutter/material.dart';

class HomeController {
  final tagSelectedNotifier = ValueNotifier<int>(0);
  int get tagSelected => tagSelectedNotifier.value;
  set tagSelected(int newTag) => tagSelectedNotifier.value = newTag;
}
