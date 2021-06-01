import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:ru_ufal_app/core/app_vectors.dart';
import 'package:ru_ufal_app/views/global_widgets/bottom_navig_bar/bottom_navig_bar_controller.dart';

class BottomNavigBar extends StatelessWidget {
  late BottomNavigBarController bottomNavigBarController;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    bottomNavigBarController = Provider.of<BottomNavigBarController>(context);

    return Material(
      elevation: 20,
      child: Container(
        width: double.infinity,
        // color: Colors.orange,
        padding: EdgeInsets.symmetric(
          horizontal: deviceSize.width * 0.05,
          vertical: deviceSize.height * 0.02,
        ),
        child: ValueListenableBuilder(
          valueListenable: bottomNavigBarController.pageSelectedNotifier,
          builder: (context, int pageSelected, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _button(
                  context: context,
                  iconUrl: AppVectors.appleOutlineIcon,
                  activatedIconUrl: AppVectors.appleFilledIcon,
                  onTap: () {
                    bottomNavigBarController.pageSelected = 0;
                  },
                  isActive: pageSelected == 0,
                ),
                _button(
                  context: context,
                  iconUrl: AppVectors.billOutlineIcon,
                  activatedIconUrl: AppVectors.billFilledIcon,
                  onTap: () {
                    bottomNavigBarController.pageSelected = 1;
                  },
                  isActive: pageSelected == 1,
                ),
                SizedBox(width: deviceSize.width * 0.1),
                _button(
                  context: context,
                  iconUrl: AppVectors.walletOutlineIcon,
                  activatedIconUrl: AppVectors.walletFilledIcon,
                  onTap: () {
                    bottomNavigBarController.pageSelected = 3;
                  },
                  isActive: pageSelected == 3,
                ),
                _button(
                  context: context,
                  iconUrl: AppVectors.settingOutlineIcon,
                  activatedIconUrl: AppVectors.settingFilledIcon,
                  onTap: () {
                    bottomNavigBarController.pageSelected = 4;
                  },
                  isActive: pageSelected == 4,
                ),
              ],
            );
          },
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
