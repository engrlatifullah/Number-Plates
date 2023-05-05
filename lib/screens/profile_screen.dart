import 'package:flutter/material.dart';
import 'package:number/screens/wallet_screnn.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/reusable_text.dart';

import '../widget/reusable_row.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: buttonColor,
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomPaint(
              size: Size(mq.width, (mq.height).toDouble()),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: buttonColor.withOpacity(0.2)),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blackColor,
                                  border: Border.all(color: buttonColor)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const ReusableText(
                            title: "Thameem zaid",
                            size: 20,
                            weight: FontWeight.w700,
                            color: whiteColor,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return const Wallet();
                          }),);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: buttonColor.withOpacity(0.3),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                blackColor,
                                Color(0xFF302201),
                              ],
                            ),
                          ),
                          child: Row(
                            children: [
                              const ReusableText(
                                title: "Wallet",
                                size: 16,
                                weight: FontWeight.w400,
                                color: whiteColor,
                              ),
                              const Spacer(),
                              ReusableText(
                                title: "QAR",
                                size: 16,
                                weight: FontWeight.w400,
                                color: whiteColor.withOpacity(0.34),
                              ),
                              SizedBox(width: 10,),
                              const ReusableText(
                                  title: "1200",
                                  size: 16,
                                  weight: FontWeight.w700,
                                  color: whiteColor),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward_ios,color: whiteColor,)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: buttonColor.withOpacity(0.3),
                          )
                        ),
                        child: Column(
                          children: [
                            ReusableRow(title: "Your Paintings",onTap: (){},),
                            ReusableRow(title: "Portfolio",onTap: (){},),
                            ReusableRow(title: "Admin alerts",onTap: (){},),
                            ReusableRow(title: "Change number",onTap: (){},),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: buttonColor.withOpacity(0.3),
                            )
                        ),
                        child: Column(
                          children: [
                            ReusableRow(title: "Term",onTap: (){},),
                            ReusableRow(title: "Privacy & Policy",onTap: (){},),
                            ReusableRow(title: "Language",onTap: (){},),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: buttonColor.withOpacity(0.3),
                            )

                        ),
                        child:  ReusableText(title: "Add a Plate",size: 20,weight: FontWeight.w700,color: whiteColor,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}


class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.04161712);
    path_0.cubicTo(
        0,
        size.height * 0.02716968,
        size.width * 0.02525574,
        size.height * 0.01545779,
        size.width * 0.05641026,
        size.height * 0.01545779);
    path_0.lineTo(size.width * 0.4042538, size.height * 0.01545779);
    path_0.cubicTo(
        size.width * 0.4113538,
        size.height * 0.01545779,
        size.width * 0.4181359,
        size.height * 0.01682307,
        size.width * 0.4229846,
        size.height * 0.01922854);
    path_0.lineTo(size.width * 0.4295795, size.height * 0.02249929);
    path_0.cubicTo(
        size.width * 0.4344282,
        size.height * 0.02490464,
        size.width * 0.4412103,
        size.height * 0.02626992,
        size.width * 0.4483103,
        size.height * 0.02626992);
    path_0.lineTo(size.width * 0.4987179, size.height * 0.02626992);
    path_0.lineTo(size.width * 0.5482769, size.height * 0.02626992);
    path_0.cubicTo(
        size.width * 0.5551231,
        size.height * 0.02626992,
        size.width * 0.5616846,
        size.height * 0.02500036,
        size.width * 0.5665000,
        size.height * 0.02274388);
    path_0.lineTo(size.width * 0.5745256, size.height * 0.01898383);
    path_0.cubicTo(
        size.width * 0.5793410,
        size.height * 0.01672735,
        size.width * 0.5859026,
        size.height * 0.01545779,
        size.width * 0.5927487,
        size.height * 0.01545779);
    path_0.lineTo(size.width * 0.9435897, size.height * 0.01545779);
    path_0.cubicTo(size.width * 0.9747436, size.height * 0.01545779, size.width,
        size.height * 0.02716968, size.width, size.height * 0.04161712);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.04161712);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
