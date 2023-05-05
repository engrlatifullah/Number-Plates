import 'dart:ui' as ui;
import 'package:custom_clippers/custom_clippers.dart';
import 'package:number/widget/light_plate_card.dart';
import 'package:path_drawer/path_drawer.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widget/dark_plate_card.dart';
import '../widget/reusable_text.dart';

class VipPlates extends StatefulWidget {
  const VipPlates({Key? key}) : super(key: key);

  @override
  State<VipPlates> createState() => _VipPlatesState();
}

class _VipPlatesState extends State<VipPlates> {
  bool tap = false;
  bool tap2 = false;
  bool whiteTap = false;
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: const [
              ReusableText(
                title: "Featured plates",
                weight: FontWeight.w700,
                size: 18,
                color: whiteColor,
              ),
              Spacer(),
              ReusableText(
                title: "see all",
                weight: FontWeight.w400,
                color: whiteColor,
              ),
              Icon(
                Icons.arrow_forward,
                color: whiteColor,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: List.generate(8, (index) {
                return DarkPlateCard(
                  icon: InkWell(
                    onTap: (){
                      setState(() {
                        tap = !tap;
                      });
                    },
                    child: Icon(
                      tap ? Icons.favorite : Icons.favorite_border,
                      color: tap ? buttonColor : buttonColor.withOpacity(0.24),
                    ),
                  ),);
              }),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: List.generate(8, (index) {
                return DarkPlateCard(
                  icon: InkWell(
                    onTap: (){
                      setState(() {
                        tap2 = !tap2;
                      });
                    },
                    child: Icon(
                      tap2 ? Icons.favorite : Icons.favorite_border,
                      color: tap2 ? buttonColor : buttonColor.withOpacity(0.24),
                    ),
                  ),);
              }),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: CustomPaint(

                size: Size(mq.width, (mq.height).toDouble()),
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 20,right: 5,left: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [

                              LightPlateCard(
                                icon:
                                InkWell(
                                    onTap: (){
                                      whiteTap = !whiteTap;
                                    },
                                    child: Icon(

                                        whiteTap ? Icons.favorite: Icons.favorite_border,color:whiteColor)),
                              ),
                              SizedBox( height: 10,),
                              LightPlateCard(
                                icon:
                                InkWell(
                                    onTap: (){
                                      whiteTap = !whiteTap;
                                    },
                                    child: Icon(

                                        whiteTap ? Icons.favorite: Icons.favorite_border,color:whiteColor)),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: ReusableText(
                title: "VIP plates",
                    size: 18,
                    color: Colors.white,
                    weight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: List.generate(3, (index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: brownColor),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: buttonColor,
                        child: ReusableText(
                          title:(index + 4).toString(),

                              color: blackColor,
                              size: 16,
                              weight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const ReusableText(title: "Digit",
                          color: whiteColor,
                          size: 16,
                          weight: FontWeight.bold,)
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    //   ..color= const Color(0xFFA0712B)
    // ..style = PaintingStyle.fill;
    paint0.shader = ui.Gradient.radial(
        const Offset(100, 150), 250, [buttonColor, darkBrownColor]);
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.1151685);
    path_0.cubicTo(
        0,
        size.height * 0.08879551,
        size.width * 0.01997680,
        size.height * 0.06741573,
        size.width * 0.04461942,
        size.height * 0.06741573);
    path_0.lineTo(size.width * 0.3164882, size.height * 0.06741573);
    path_0.cubicTo(
        size.width * 0.3283622,
        size.height * 0.06741573,
        size.width * 0.3397480,
        size.height * 0.06235000,
        size.width * 0.3481207,
        size.height * 0.05333989);
    path_0.lineTo(size.width * 0.3846142, size.height * 0.01407587);
    path_0.cubicTo(size.width * 0.3929895, size.height * 0.005065815,
        size.width * 0.4043753, 0, size.width * 0.4162493, 0);
    path_0.lineTo(size.width * 0.9553806, 0);
    path_0.cubicTo(size.width * 0.9800236, 0, size.width,
        size.height * 0.02137966, size.width, size.height * 0.04775281);
    path_0.lineTo(size.width, size.height * 0.9522472);
    path_0.cubicTo(size.width, size.height * 0.9786208, size.width * 0.9800236,
        size.height, size.width * 0.9553806, size.height);
    path_0.lineTo(size.width * 0.04461942, size.height);
    path_0.cubicTo(size.width * 0.01997682, size.height, 0,
        size.height * 0.9786208, 0, size.height * 0.9522472);
    path_0.lineTo(0, size.height * 0.1151685);
    path_0.close();

    canvas.drawPath(path_0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
