import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/small_text.dart';
// import 'package:food_delivery/utils/app_colors.dart';
// import 'package:food_delivery/utils/dimensions.dart';
// import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firsthalf;
  late String secondhalf;

  bool hiddenText = true;
  double textHeight = Dimensions.height45 - 15;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firsthalf = widget.text.substring(0, textHeight.toInt());
      secondhalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firsthalf = widget.text;
      secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty
          ? SmallText(
              height: 1.8,
              color: AppColors.paraColor,
              size: Dimensions.font14,
              text: firsthalf)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                    height: 1.8,
                    color: AppColors.paraColor,
                    size: Dimensions.font14,
                    text: hiddenText
                        ? (firsthalf + "...")
                        : (firsthalf + secondhalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
