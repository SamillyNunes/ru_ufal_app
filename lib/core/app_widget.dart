import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ru_ufal_app/views/custom_page_view/custom_page_view.dart';
import 'package:ru_ufal_app/views/global_widgets/bottom_navig_bar/bottom_navig_bar_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => BottomNavigBarController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "RU Ufal App",
        theme: ThemeData(fontFamily: "Rajdhani"),
        home: CustomPageView(),
      ),
    );
  }
}
