import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ru_ufal_app/core/app_colors.dart';
import 'package:ru_ufal_app/utils/formatter_util.dart';
import 'package:ru_ufal_app/views/home/home_controller.dart';
import 'package:ru_ufal_app/views/home/widgets/food_tile.dart';
import 'package:ru_ufal_app/views/home/widgets/tag_widget.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    DateTime currentDatetime = DateTime.now();

    return Column(
      children: [
        Container(
          width: deviceSize.width,
          height: deviceSize.height * 0.15,
          padding: EdgeInsets.all(
            deviceSize.width * 0.03,
          ),
          decoration: BoxDecoration(
            color: AppColors.defaultBlue,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          child: Container(
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: deviceSize.width * 0.2,
                  width: deviceSize.width * 0.2,
                  // color: AppColors.black,
                  child: CircleAvatar(
                    // radius: deviceSize.width * 0.05,
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/37520136?v=4",
                    ),
                  ),
                ),
                // SizedBox(width: deviceSize.width * 0.05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Samilly Nunes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: deviceSize.height * 0.01),
                    Text(
                      "Saldo: R\$ 50,00",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: deviceSize.width * 0.05,
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: deviceSize.height * 0.02,
                ),
                child: Text(
                  FormatterUtil.dateFormatter(context, currentDatetime),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: homeController.tagSelectedNotifier,
                builder: (context, tagSelectedIndex, _) {
                  return Row(
                    children: [
                      TagWidget(
                        title: "Café da Manhã",
                        isSelected: tagSelectedIndex == 0,
                        onTapped: () {
                          homeController.tagSelected = 0;
                        },
                      ),
                      TagWidget(
                        title: "Almoço",
                        isSelected: tagSelectedIndex == 1,
                        onTapped: () {
                          homeController.tagSelected = 1;
                        },
                      ),
                      TagWidget(
                        title: "Jantar",
                        isSelected: tagSelectedIndex == 2,
                        onTapped: () {
                          homeController.tagSelected = 2;
                        },
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: deviceSize.height * 0.01,
                ),
                child: Text(
                  "Comida",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              FoodTile(
                title: "Cuscuz",
                imageUrl:
                    "data:image/jpeg;base64,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",
                isImageFromNetwork: true,
              ),
              FoodTile(
                title: "Macaxeira",
                imageUrl:
                    "data:image/jpeg;base64,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",
                isImageFromNetwork: true,
              ),
              FoodTile(
                title: "Café",
                imageUrl:
                    "data:image/jpeg;base64,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",
                isImageFromNetwork: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
