import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expanded_text_widget.dart';
import 'package:food_app/widgets/small_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                width: double.maxFinite,
                child: Center(
                  child: BigText(text: "Sliver app Bar"),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food3.png",
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  color: AppColors.yellowColor,
                  child: const ExpandableTextWidget(
                      text:
                          "Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets, flutter is so sweet to learn and nice for ui development for mobiles and ios etc..i love flutter so much, ....... Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets, flutter is so sweet to learn and nice for ui development for mobiles and ios etc..i love flutter so much...Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets, flutter is so sweet to learn and nice for ui development for mobiles and ios etc..i love flutter so much, ....... Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets, flutter is so sweet to learn and nice for ui development for mobiles and ios etc..i love flutter so much...Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets, flutter is so sweet to learn and nice for ui development for mobiles and ios etc..i love flutter so much, ....... Positioned is a widget that comes built-in with flutter SDK. Postioned does exactly what it sounds like, which is it arbitrarily positioned widgets on top of each other. It is usually used to position child widgets in Stack widget or similar. It only works for Stateless and Stateful widgets, flutter is so sweet to learn and nice for ui development for mobiles and ios etc..i love flutter so much"),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: 24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "#5000.000 x 3",
                  color: AppColors.mainBlackColor,
                ),
                AppIcon(
                    iconSize: 24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite, color: AppColors.mainColor),
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
        ],
      ),
    );
  }
}
