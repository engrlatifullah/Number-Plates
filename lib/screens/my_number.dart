import 'package:flutter/material.dart';
import 'package:number/screens/auction.dart';
import 'package:number/widget/reusable_text.dart';

import '../utils/colors.dart';
import '../widget/pic_icon.dart';
import '../widget/round_button.dart';

class MyNumber extends StatefulWidget {
  const MyNumber({Key? key}) : super(key: key);

  @override
  State<MyNumber> createState() => _MyNumberState();
}

class _MyNumberState extends State<MyNumber> {
  int _currentIndex = 0;
  final List category = ["Vip Plates", "VVIP", "General", "Expired"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          centerTitle: true,
          title: const ReusableText(
            title: "My Number",
            size: 20,
            weight: FontWeight.w700,
            color: whiteColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            ReusableText(
                              title: category[index],
                              weight: FontWeight.w700,
                              color: whiteColor,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: _currentIndex == index
                                  ? brownColor
                                  : transparentColor,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: List.generate(5, (index) {
                    return Container(
                      height: 113,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: buttonColor.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 135,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: buttonColor.withOpacity(0.15)),
                            child: SizedBox(
                                height: 80,
                                width: 136,
                                child: Image.asset("assets/images/numplate.png",fit: BoxFit.cover,)),
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  const [
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: "Date  modified",
                                weight: FontWeight.w400,
                                size: 10,
                                color: whiteColor,
                              ),
                              SizedBox(height: 10,),
                              ReusableText(
                                title: "2 days",
                                weight: FontWeight.w700,
                                color: buttonColor,
                              ),

                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              const Icon(Icons.delete,color: whiteColor,),
                              const Spacer(),
                              InkWell(
                                onTap: (){
                                  showDialog(context: context, builder: (_){
                                    return const VipDialoge();
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: buttonColor.withOpacity(0.1)
                                  ),
                                  child: const ReusableText(title: "Boost Ad",weight: FontWeight.w400,color: buttonColor,)
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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

class VipDialoge extends StatelessWidget {
  const VipDialoge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: blackColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: buttonColor.withOpacity(0.5),
          )),
      child: Padding( padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
               alignment: Alignment.topRight,
               child: InkWell(
                   onTap: () {
                     Navigator.pop(context);
                   },
                   child: const Icon(
                     Icons.close,
                     color: redColor,
                   )),
             ),
            const SizedBox(height: 20,),
            ReusableText(
              title: "Request to mark the ad for the board (626766 - Private )",weight: FontWeight.w400,color: whiteColor.withOpacity(0.7),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blackColor,
                      border: Border.all(color: buttonColor.withOpacity(0.35),),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ReusableText(title: "VIP",weight: FontWeight.w700,color: whiteColor,),
                        SizedBox(width: 10,),
                        ReusableText(title: "30 QR",weight: FontWeight.w700,color: buttonColor,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: buttonColor,
                      border: Border.all(color: buttonColor.withOpacity(0.35),),
                    ),
                    child:
                        const ReusableText(title: "VIP 30 QR",weight: FontWeight.w700,color: blackColor,),

                  ),
                ),
              ],
            ),

            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}




