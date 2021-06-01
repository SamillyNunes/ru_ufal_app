import 'package:flutter/material.dart';

import 'package:ru_ufal_app/core/app_colors.dart';
import 'package:ru_ufal_app/core/app_images.dart';

class FoodTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isImageFromNetwork;

  const FoodTile({
    Key? key,
    this.imageUrl = AppImages.logo,
    required this.title,
    this.isImageFromNetwork = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        bottom: deviceSize.height * 0.02,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: deviceSize.width * 0.03,
          vertical: deviceSize.width * 0.02,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: deviceSize.width * 0.1,
              width: deviceSize.width * 0.1,
              child: this.isImageFromNetwork
                  ? CircleAvatar(
                      backgroundImage: NetworkImage(this.imageUrl),
                    )
                  : CircleAvatar(
                      backgroundImage: AssetImage(this.imageUrl),
                    ),
            ),
            SizedBox(width: deviceSize.width * 0.05),
            Expanded(
              child: Text(
                this.title,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
