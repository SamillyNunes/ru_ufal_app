import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ru_ufal_app/core/app_vectors.dart';

class BottomNavigBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Material(
      elevation: 20,
      child: Container(
        width: double.infinity,
        // color: Colors.orange,
        padding: EdgeInsets.symmetric(
          horizontal: deviceSize.width * 0.05,
          vertical: deviceSize.height * 0.02,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _button(
              context: context,
              iconUrl: AppVectors.appleOutlineIcon,
              activatedIconUrl: AppVectors.appleFilledIcon,
              onTap: () {},
              isActive: true,
            ),
            _button(
              context: context,
              iconUrl: AppVectors.billOutlineIcon,
              activatedIconUrl: AppVectors.billFilledIcon,
              onTap: () {},
              isActive: false,
            ),
            SizedBox(width: deviceSize.width * 0.1),
            _button(
              context: context,
              iconUrl: AppVectors.walletOutlineIcon,
              activatedIconUrl: AppVectors.walletFilledIcon,
              onTap: () {},
              isActive: false,
            ),
            _button(
              context: context,
              iconUrl: AppVectors.settingOutlineIcon,
              activatedIconUrl: AppVectors.settingFilledIcon,
              onTap: () {},
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _button({
    required BuildContext context,
    required String iconUrl,
    required String activatedIconUrl,
    required Function onTap,
    required bool isActive,
  }) {
    Size deviceSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () => onTap(),
      child: SvgPicture.asset(
        isActive ? activatedIconUrl : iconUrl,
        height: deviceSize.height * 0.05,
      ),
    );
  }
}
