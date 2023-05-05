import 'package:flutter/material.dart';
import 'package:number/screens/drawer.dart';
import 'package:number/screens/home_screen.dart';
import 'package:number/screens/profile_screen.dart';

import '../utils/colors.dart';
import '../widget/pic_icon.dart';
import 'add_painting.dart';
import 'auction_list.dart';
import 'bookmark_screen.dart';
var data;
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List _pages = [
    const HomeScreen(),
    const AuctionList(),
    const BookMark(),
    const Profile(),
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
            return const AddPainting();
          }));
        },
        child: Container(
          height: 70,
          width: 70,
          padding: const EdgeInsets.all(1),
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.5),
                blurRadius: 5,spreadRadius: 2
              )
            ]
          ),
          child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEBC779),
              ),
            child: const Icon(Icons.add,size: 40,),
          ),
        ),
      ),
     bottomNavigationBar: BottomAppBar( 
       color: transparentColor,elevation: 0,
       shape: CircularNotchedRectangle(),
       child: Container(
         margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(18),
           gradient: bottomNavGradient,
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             InkWell(
                 onTap: (){
                   setState(() {
                     _currentIndex = 0;
                   });
                 },
                 child: PicIcon(image: "assets/icons/home.svg", color: _currentIndex == 0 ? blackColor : blackColor.withOpacity(0.37),)),
             InkWell(
                 onTap: (){
                   setState(() {
                     _currentIndex = 1;
                   });
                 },
                 child: PicIcon(image: "assets/icons/met.svg", color: _currentIndex == 1 ? blackColor : blackColor.withOpacity(0.37),)),
             const SizedBox(),
             InkWell(
                 onTap: (){
                   setState(() {
                     _currentIndex = 2;
                   });
                 },
                 child: PicIcon(image: "assets/icons/fav.svg", color: _currentIndex == 2 ? blackColor : blackColor.withOpacity(0.37),)),
             InkWell(
                 onTap: (){
                   setState(() {
                     _currentIndex = 3;
                   });
                 },
                 child: PicIcon(image: "assets/icons/person.svg", color: _currentIndex == 3 ? blackColor : blackColor.withOpacity(0.37),)),
           ],
         ),
       ),
     ),
    );
  }
}
