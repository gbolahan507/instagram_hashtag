import 'package:flutter/material.dart';
import 'package:instagram_harshtag/core/harshtagmodel.dart';
import 'package:instagram_harshtag/ui/widet/custom_text.dart';
import 'package:instagram_harshtag/ui/widet/heading_bar.dart';
import 'package:instagram_harshtag/utils/colors.dart';
import 'package:instagram_harshtag/utils/spacing.dart';



class HrshTagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: SafeArea(
              child: Container(

          child: ListView(
            children: [
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),

                child: HeadingBar(
                  title: 'Popular Hashtagler',
                  onTapCategory: (){},
                  onTapList: (){},
                ),
              ),
              verticalSpaceMedium,
              verticalSpaceMedium,

              Column(
                children: [
                  Container(

                    child: ListView.builder(
                      itemCount: harshtag.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        final Harshtag harsh = harshtag[index];
                        return         Container(
                    padding: EdgeInsets.only(bottom: 10),

                          child: Column(
                            children: [
                              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                                Expanded(
                                                    child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: harsh.buttocolor
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal:10, vertical: 5),
                                          child: 
                                          CustomText(
                                            text: harsh.buttontext,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: harsh.textcolor
                                          )
                                        ),
                                        verticalSpaceSmall,
                                          CustomText(
                                            text: harsh.comments,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: blackcolor
                                          )
                                        
                                    
                                      ],
                                    ),
                                  ),
                                ),
                                horizontalSpaceMedium,
                                horizontalSpaceMedium,

                                horizontalSpaceTiny,
                                  Stack(
                                     alignment: AlignmentDirectional.bottomCenter,
                                    children: [
                                      ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),

                                                child: Image.asset(
                                          'images/gbolahan2.png',
                                          width: 100,
                                          height: 150,
                                          fit: BoxFit.fill
                                        ),
                                      ),
                                         
                                            Container(
                                              height:40,
                                              width: 115,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                              color: deeppurplecolor,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.deepPurpleAccent,
                                                  blurRadius: 8,
                                                  offset: Offset(0, 4)
                                                )
                                              ]

                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  CustomText(
                                                    text: harsh.imagetext,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: whitecolor,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                        ),
                                         
                                    ],
                                  ),

                      ],
                    ),
                              ),
                    // verticalSpaceSmall,
                    Divider(color: Colors.grey,)
                            ],
                          ),
                        );
                      }),
                  )

          
                ],
              )
            ]
          )
              )
      )
              );

  }
            
          
  
  }


