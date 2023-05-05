import 'package:flutter/material.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/pic_icon.dart';
import 'package:number/widget/reusable_text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: blackColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: ListView(
        children:  [
          const SizedBox(height: 10,),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/hom3.svg"),
          title: ReusableText(title: "Home",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/daily.svg"),
          title: ReusableText(title: "Daily newsletter",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/fa.svg"),
          title: ReusableText(title: "Favorite",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/dealer.svg"),
          title: ReusableText(title: "Dealer",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/faq.svg"),
          title: ReusableText(title: "Faw",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/alert.svg"),
          title: ReusableText(title: "Alert",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/support.svg"),
          title: ReusableText(title: "Support",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/review.svg"),
          title: ReusableText(title: "Review",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/share.svg"),
          title: ReusableText(title: "Share",color: whiteColor,),
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
            leading:
          PicIcon(image: "assets/icons/logout.svg"),
          title: ReusableText(title: "Logout",color: whiteColor,),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: bottomNavGradient,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
              PicIcon(image: "assets/icons/whatsapp.svg",),
              PicIcon(image: "assets/icons/insta.svg",),
              PicIcon(image: "assets/icons/snap.svg",),
              PicIcon(image: "assets/icons/telegram.svg",),
              ],
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
