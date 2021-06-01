import 'package:flutter/material.dart';
import 'package:ru_ufal_app/views/home/home_view.dart';

class CustomPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
          body: HomeView(),
        ),
      ],
    );
  }
}
