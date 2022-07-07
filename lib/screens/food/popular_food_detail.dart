import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_colum.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expanded_text_widget.dart';
import 'package:food_app/widgets/icon_and_text_widget.dart';
import 'package:food_app/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/food1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                  ),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(text: "Jellof Rice"),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                "Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets, flutter is so sweet to learn and nice for ui development for mobiles and ios etc..i love flutter so much"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: Dimensions.bottomHeightBar120,
          padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20),
              topRight: Radius.circular(Dimensions.radius20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    right: Dimensions.width20,
                    left: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    SizedBox(width: Dimensions.width3),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.width3),
                    Icon(
                      Icons.add,
                      color: AppColors.signColor,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    right: Dimensions.width20,
                    left: Dimensions.width20),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
                child: BigText(
                  text: "\$10 | Add to Cart",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
