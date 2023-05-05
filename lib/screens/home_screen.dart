import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:number/screens/drawer.dart';
import 'package:number/screens/vip_plates.dart';
import 'package:number/widget/pic_icon.dart';
import 'package:number/widget/reusable_text.dart';
import 'package:custom_clippers/custom_clippers.dart';
import '../model/category.dart';
import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final key = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  final List<CategoryModel> category = [
    CategoryModel(icon: 'assets/icons/vip.svg', title: 'VIP plates'),
    CategoryModel(icon: 'assets/icons/golden.svg', title: 'Golden'),
    CategoryModel(icon: 'assets/icons/transport.svg', title: 'Transport'),
    CategoryModel(icon: 'assets/icons/birth.svg', title: 'Birth date'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: key,
        drawer: const CustomDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Choose your dream plates
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [brownColor, darkBrownColor],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container( padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),

                            decoration: BoxDecoration(
                              color: lightPinkColor,
                              borderRadius: BorderRadius.circular(10),
                              border: GradientBoxBorder(
                                width: 2,
                                gradient: LinearGradient(
                                  colors: [
                                    buttonColor.withOpacity(0.75),
                                    yellowColor.withOpacity(0.75),
                                  ],
                                ),
                              ),
                            ),
                            child: const ReusableText(
                              title: "Number Plates",size: 12,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                            decoration: BoxDecoration(
                              color: lightPinkColor,
                              borderRadius: BorderRadius.circular(10),
                              border: GradientBoxBorder(
                                width: 2,
                                gradient: LinearGradient(
                                  colors: [
                                    buttonColor.withOpacity(0.75),
                                    yellowColor.withOpacity(0.75),
                                  ],
                                ),
                              ),
                            ),
                            child: const ReusableText(
                              title: "Mobile Number",size: 12,
                            ),
                          ),
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: const [
                        //     ReusableText(title: "Choose your",size: 20,weight: FontWeight.w400,),
                        //     ReusableText(title: "Dream Plates",size: 25,weight: FontWeight.w700,),
                        //
                        //   ],
                        // ),
                        SizedBox(width: 10,),
                        const PicIcon(image: "assets/icons/notification.svg"),
                        InkWell(
                          onTap: (){
                            key.currentState!.openDrawer();
                          },
                          child: SvgPicture.asset("assets/icons/drawer.svg"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      decoration:  InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        hintText: "Search",
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: blackColor.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const PicIcon(image: "assets/icons/filter.svg"),
                        ),
                        filled: true,
                        fillColor: whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(category.length, (index){
                  return InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PicIcon(image: category[index].icon),
                          const SizedBox(width: 10,),
                          Column(
                          children: [
                            const SizedBox(height: 5,),
                            ReusableText(title: category[index].title,weight: FontWeight.w700,color: whiteColor,),
                            const SizedBox(height: 10,),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: _currentIndex == index ? brownColor : transparentColor ,
                            )
                          ],
                        )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 30,),
            const Expanded(child: VipPlates()),


          ],
        ),
      ),
    );
  }
}
