import 'package:flutter/material.dart';
import 'package:ru_ufal_app/core/app_colors.dart';

class TagWidget extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TagWidget({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: deviceSize.width * 0.02,
        vertical: deviceSize.height * 0.02,
      ),
      child: Container(
        width: deviceSize.width * 0.25,
        height: deviceSize.width * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: this.isSelected
              ? AppColors.defaultRed
              : AppColors.defaultRed.withOpacity(.5),
        ),
        child: Center(
          child: Text(
            this.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
