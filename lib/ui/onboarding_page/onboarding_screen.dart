import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_harshtag/ui/screen/bottom_navScreen.dart';
import 'package:instagram_harshtag/ui/widet/custom_text.dart';
import 'package:instagram_harshtag/utils/colors.dart';
import 'package:instagram_harshtag/utils/spacing.dart';




class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

    void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => ButttomNavScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset('images/dashboard2.png', color: , width: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 55),
            decoration: BoxDecoration(
              color: Color(0xFF2C3E4C),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: whitecolor,
                  ),
                  child: Row(
                    children: [
                      CustomText(
                        text: '@',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: blackcolor,
                      ),
                      horizontalSpaceMedium,
                      CustomText(
                        text: 'KULLANICI ADI',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: blackcolor,
                      )
                    ],
                  ),
                ),
                verticalSpaceMedium,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: 'Gizlilic Sozlesmesi ve Kullanci',
                          color: whitecolor,
                          fontSize: 16,
                        ),
                          CustomText(
                          text: 'Sozlesmesini onayliyorun',
                          color: whitecolor,
                          fontSize: 16,
                        ),
                      ],
                    )
                  ],
                ),
                verticalSpaceMedium,

                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.blue[900],
                        Colors.purple,
                      ]

                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'GIRIS YAP',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: whitecolor,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}