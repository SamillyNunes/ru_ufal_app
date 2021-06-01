import 'package:flutter/material.dart';
import 'package:ru_ufal_app/views/custom_page_view/custom_page_view.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RU Ufal App",
      theme: ThemeData(fontFamily: "Rajdhani"),
      home: CustomPageView(),
    );
  }
}
