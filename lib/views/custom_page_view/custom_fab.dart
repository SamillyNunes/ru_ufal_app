import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ru_ufal_app/core/app_colors.dart';
import 'package:ru_ufal_app/core/app_vectors.dart';

class CustomFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Container(
      height: deviceSize.width * 0.12,
      width: deviceSize.width * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.defaultBlue,
      ),
      padding: EdgeInsets.all(deviceSize.width * 0.03),
      child: SvgPicture.asset(
        AppVectors.qrCodeScanIcon,
        color: AppColors.white,
      ),
    );
  }
}
