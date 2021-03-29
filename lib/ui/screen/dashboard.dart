import 'package:flutter/material.dart';
import 'package:instagram_harshtag/ui/screen/harshtag_screen.dart';
import 'package:instagram_harshtag/ui/widet/custom_text.dart';
import 'package:instagram_harshtag/ui/widet/heading_bar.dart';
import 'package:instagram_harshtag/utils/colors.dart';
import 'package:instagram_harshtag/utils/spacing.dart';


class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
           body: SafeArea(
                        child: Container(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: ListView(
                 children: [
                   verticalSpaceMedium,
                    HeadingBar(
                  title: 'Takipic Satin AI',
                  onTapCategory: (){},
                  onTapList: (){},
                ),
                   verticalSpaceMedium,
                   verticalSpaceMedium,

                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.white,
                         boxShadow: const <BoxShadow>[
                  BoxShadow(
                    offset: Offset(5, 5),
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ],

                     ),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                       child: Row(
                         children: [
                           CircleAvatar(
                             radius: 57,
                             backgroundColor: redcolor,
                              child: CircleAvatar(
                               radius: 50,
                               backgroundColor: bluecolor,
                               backgroundImage: AssetImage('images/gbolahan2.png'),
                             ),
                           ),
                           horizontalSpaceMedium,
                           Column(
                             children: [
                              CustomText(
                                text: '@melisadeniz',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: bluecolor,
                              ),
                                 CustomText(
                                text: '5.3M Takipci',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: bluecolor,
                              ),
                             ],
                           )

                         ],
                       ),
                     ),
                   ),
                   verticalSpaceLarge,
                   ListView.builder(
                     itemCount: 10,
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemBuilder: (context, index){
                       return
                    
                   Container(
                     margin: EdgeInsets.only(bottom: 20),
                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.blueGrey[100]
                     ),
                     child: Row(
                       children: [
                         Container(
                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                             color: Colors.green[200],
                             borderRadius: BorderRadius.circular(8)
                           ),
                           child: Image.asset('images/coin.png', width: 20,)
                         ),
                         horizontalSpaceSmall,
                         CustomText(
                           text: '10 Takipci Satin AI',
                           fontSize: 15,
                           fontWeight: FontWeight.w500,
                           color: bluecolor,
                         ),
                         Spacer(),
                           Container(
                             width: 130,
                             height: 50,
                             decoration: BoxDecoration(
                             color: Colors.blue[300],
                             borderRadius: BorderRadius.circular(8)
                           ),
                           child: Center(
                             child: CustomText(
                               text: '9.99 TL',
                               color: whitecolor,
                               fontWeight: FontWeight.w700,
                               fontSize: 18,
                             ),
                           )
                         ),
                       ],
                     ),
                   );
                    }
                   )
                 ],
               ),
             ),
      ),
           ),
    );
  }
}


