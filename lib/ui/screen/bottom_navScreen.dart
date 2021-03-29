import 'package:flutter/material.dart';
import 'package:instagram_harshtag/ui/screen/dashboard.dart';
import 'package:instagram_harshtag/ui/screen/harshtag_screen.dart';
import 'package:instagram_harshtag/ui/screen/image_screen.dart';
import 'package:instagram_harshtag/utils/colors.dart';
import 'package:instagram_harshtag/utils/spacing.dart';







class ButttomNavScreen extends StatefulWidget {
  @override
  _ButttomNavScreenState createState() => _ButttomNavScreenState();
}

class _ButttomNavScreenState extends State<ButttomNavScreen> {

    int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  selectedIndex == 0 ? DashBoard() : selectedIndex == 1 ?  HrshTagScreen(): selectedIndex == 2 ? ImageScreen() : Scaffold(),
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem('images/dashboard.png', 0),
          buildNavBarItem('images/chat.png', 1),
          buildNavBarItem('images/gallery.png', 2),
          buildNavBarItem('images/window.png', 3),
              ],
            ),
          
    );
  }
  Widget buildNavBarItem(String image, int index,){
  return InkWell(
    onTap: (){
      setState(() {
        selectedIndex = index;
      });
    },
      child: Container(
      height: 65,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
      color: lightblackcolor
      ),
      child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(image, 
          color: Colors.grey ,
          width: 30,),
          verticalSpaceTiny,
          Divider(
          color: index == selectedIndex ? Colors.grey : Colors.black
            ),

        ],
      ),
    ),
  );

}
}



