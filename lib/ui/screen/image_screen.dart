import 'package:flutter/material.dart';
import 'package:instagram_harshtag/ui/widet/custom_text.dart';
import 'package:instagram_harshtag/ui/widet/heading_bar.dart';
import 'package:instagram_harshtag/utils/colors.dart';
import 'package:instagram_harshtag/utils/spacing.dart';


class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: SafeArea(
              child: Container(
          child: ListView(
            children: [
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: HeadingBar(
                  title: 'Begeni Satin AI',
                  onTapCategory: (){},
                  onTapList: (){},
                ),
              ),
            
              verticalSpaceMedium,
              verticalSpaceMedium,

              Container(
      margin: EdgeInsets.symmetric(horizontal:10),

                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
  itemCount: 19,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    mainAxisSpacing: 15,
    crossAxisSpacing: 17,
    childAspectRatio: .8,
      crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3),
  itemBuilder: (BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: Colors.deepPurple[50],
      borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: Image.asset(
      'images/gbolahan2.png',
    )
    ),
    verticalSpaceSmall,
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.favorite_outline, size: 18, color: Colors.pink,),
        horizontalSpaceTiny,
        CustomText(
          text: '485',
          color: blackcolor,
          fontSize: 13,
          fontWeight: FontWeight.normal,
        )
      ],
    )


        ],
      ),

    );
  },
),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}