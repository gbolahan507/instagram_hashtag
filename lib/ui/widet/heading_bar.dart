import 'package:flutter/material.dart';
import 'package:instagram_harshtag/ui/widet/custom_text.dart';
import 'package:instagram_harshtag/utils/colors.dart';
import 'package:instagram_harshtag/utils/spacing.dart';





class HeadingBar extends StatelessWidget {

  final String title;
  final Function onTapCategory;
  final Function onTapList;
  const HeadingBar({
    this.onTapList, this.onTapCategory, this.title,
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      CustomText(
        text: title,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: bluecolor,
      ),
      Spacer(),
      InkWell(
        onTap: onTapCategory,
        child: Image.asset('images/category.png', width: 20, )),
     horizontalSpaceMedium,
      InkWell(
        onTap: onTapList,
        child: Image.asset('images/list2.png', width: 30, )),
    ],
            );
  }
}
