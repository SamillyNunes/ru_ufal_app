import 'package:flutter/material.dart';
import 'package:ru_ufal_app/views/global_widgets/custom_fab.dart';
import 'package:ru_ufal_app/views/global_widgets/bottom_navig_bar/bottom_navig_bar.dart';
import 'package:ru_ufal_app/views/home/home_view.dart';

class CustomPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
          body: HomeView(),
          bottomNavigationBar: BottomNavigBar(),
          floatingActionButton: CustomFAB(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ],
    );
  }
}
