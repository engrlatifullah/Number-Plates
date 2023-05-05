import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:number/screens/wallet_screnn.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/reusable_text.dart';

import '../widget/reusable_row.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: buttonColor,
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomPaint(
              size: Size(mq.width, (mq.height).toDouble()),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RoundShape(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: buttonColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ReusableText(
                            title: "145 views",
                            color: buttonColor,
                          ),
                          Spacer(),
                          Icon(
                            Icons.share,
                            color: buttonColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 236,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: buttonColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 180,
                                width: double.infinity,
                                child: Image.asset("assets/images/numplate.png",fit: BoxFit.cover,)),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: "Published date:c22-03-2023",
                              color: whiteColor,
                              size: 16,
                              weight: FontWeight.w400,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: "panel type",
                            color: whiteColor.withOpacity(0.8),
                          ),
                          ReusableText(
                            title: "(Triple)/private",
                            color: whiteColor,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Divider(
                        color: buttonColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: "transfer via Metrash App:",
                            color: whiteColor.withOpacity(0.8),
                          ),
                          ReusableText(
                            title: "Yes",
                            color: whiteColor,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Divider(
                        color: buttonColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: "publisher ID",
                            color: whiteColor.withOpacity(0.8),
                          ),
                          ReusableText(
                            title: "83549-LOID",
                            color: whiteColor,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Divider(
                        color: buttonColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ReusableText(
                        title: "Price for the highest price",
                        color: whiteColor.withOpacity(0.8),
                      ),
                      Divider(
                        color: buttonColor,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: buttonColor.withOpacity(0.1),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: darkGreyColor.withOpacity(0.8),
                                  ),
                                  child: const Icon(
                                    FontAwesomeIcons.whatsapp,
                                    color: Color(0xFF128C7E),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 50,
                                  width: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: darkGreyColor.withOpacity(0.8),
                                  ),
                                  child: const Icon(
                                    FontAwesomeIcons.phone,
                                    color: whiteColor,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 50,
                                  width: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: darkGreyColor.withOpacity(0.8),
                                  ),
                                  child: const Icon(
                                    FontAwesomeIcons.solidMessage,
                                    color: whiteColor,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  FontAwesomeIcons.copy,
                                  color: whiteColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const ReusableText(
                                  title: "Copy",
                                  color: whiteColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ReusableText(
                        title: "Similar Plates",
                        size: 16,
                        weight: FontWeight.w700,
                        color: whiteColor,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: List.generate(5, (index){
                           return   Container(
                             height: 131,
                             width: 154,
                             margin: const EdgeInsets.only(right: 10),
                             padding: const EdgeInsets.all(8),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: darkRedColor.withOpacity(0.5),
                               border: Border.all(
                                 color: buttonColor.withOpacity(0.24),
                               ),
                             ),
                             child: Column(
                               children: [
                                 Container(
                                   padding: EdgeInsets.all(3),
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: buttonColor.withOpacity(0.15)),
                                   child: SizedBox(height: 71,width: 151,child: Image.asset(
                                     "assets/images/numplate.png",
                                     fit: BoxFit.cover,
                                   ),),
                                 ),
                                 const SizedBox(
                                   height: 8,
                                 ),
                                 Row(
                                   children: [
                                     Container(
                                       height: 28,
                                       width: 84,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(10),
                                           color: buttonColor.withOpacity(0.15)),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           ReusableText(
                                             title: "QAR",
                                             weight: FontWeight.w400,
                                             color: whiteColor.withOpacity(0.67),
                                           ),
                                           SizedBox(
                                             width: 5,
                                           ),
                                           const ReusableText(
                                               title:"600",
                                               weight: FontWeight.w700, color: whiteColor),

                                         ],
                                       ),
                                     ),
                                     Spacer(),Icon(
                                       tap ? Icons.favorite : Icons.favorite_border,
                                       color: tap ? buttonColor : buttonColor.withOpacity(0.24),
                                     ),
                                   ],
                                 )
                               ],
                             ),
                           );


                         }),
                       ),
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

class RoundShape extends CustomPainter {
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = darkRedColor
      ..style = PaintingStyle.fill;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width * 0.9900000, size.height);
    path0.lineTo(size.width * 0.7400000, size.height * 0.8700000);
    path0.lineTo(size.width, size.height * 0.7480500);
    path0.lineTo(size.width * 0.7500000, size.height * 0.6250000);
    path0.lineTo(size.width, size.height * 0.4981000);
    path0.lineTo(size.width * 0.7400000, size.height * 0.3700000);
    path0.lineTo(size.width, size.height * 0.2450000);
    path0.lineTo(size.width * 0.7500000, size.height * 0.1250000);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
