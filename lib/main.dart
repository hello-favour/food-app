import 'package:flutter/material.dart';
import 'package:food_app/screens/food/popular_food_detail.dart';
import 'package:food_app/screens/food/recommended_food_details.dart';
import 'package:food_app/screens/home/main_food_page.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: RecommendedFoodDetail(),
    );
  }
}
