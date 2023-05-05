import 'package:flutter/material.dart';
import 'package:number/screens/pyment_dialoge.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/reusable_text.dart';

import '../widget/round_button.dart';

class Auction extends StatefulWidget {
  const Auction({Key? key}) : super(key: key);

  @override
  State<Auction> createState() => _AuctionState();
}

class _AuctionState extends State<Auction> {
  bool visible = false;
  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          centerTitle: true,
          elevation: 0,
          title: const ReusableText(
            title: "Auction",
            size: 16,
            weight: FontWeight.w700,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 188,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: yellowColor),
                      gradient: LinearGradient(
                          colors: [brownColor, brownColor.withOpacity(0.4)])),
                  child: SizedBox(
                    height: 188,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/numplate.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: "Vip Plate",
                  size: 16,
                  weight: FontWeight.w700,
                  color: whiteColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: buttonColor,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: "Starting Price",
                            weight: FontWeight.w400,
                            color: whiteColor.withOpacity(0.8),
                          ),
                          const ReusableText(
                            title: "QAR 1254",
                            size: 12,
                            weight: FontWeight.w400,
                            color: buttonColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: "Bids",
                            weight: FontWeight.w400,
                            color: whiteColor.withOpacity(0.8),
                          ),
                          const ReusableText(
                            title: "22",
                            size: 12,
                            weight: FontWeight.w400,
                            color: whiteColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: "Start Date",
                            weight: FontWeight.w400,
                            color: whiteColor.withOpacity(0.8),
                          ),
                          const ReusableText(
                            title: "03-May-2023",
                            size: 12,
                            weight: FontWeight.w400,
                            color: whiteColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: "End Date",
                            weight: FontWeight.w400,
                            color: whiteColor.withOpacity(0.8),
                          ),
                          const ReusableText(
                            title: "03-Jun-2023",
                            size: 12,
                            weight: FontWeight.w400,
                            color: whiteColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReusableText(
                            title: "Mini-Increment:",
                            weight: FontWeight.w400,
                            color: buttonColor,
                          ),
                          ReusableText(
                            title: "100 QAR",
                            size: 12,
                            weight: FontWeight.w400,
                            color: buttonColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: buttonColor,
                    ),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const ReusableText(
                                title: "All Bids",
                                size: 18,
                                weight: FontWeight.w600,
                                color: whiteColor,
                              ),
                              Icon(
                                visible
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down_rounded,
                                color: whiteColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: visible,
                        child: Column(
                          children: List.generate(4, (index) {
                            return ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onTap: () {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                              tileColor: _currentIndex == index
                                  ? brownColor.withOpacity(0.1)
                                  : transparentColor,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              leading: const ReusableText(
                                title: "Hamada",
                                weight: FontWeight.w400,
                                color: whiteColor,
                              ),
                              trailing: const ReusableText(
                                title: "100 QAR",
                                color: whiteColor,
                                size: 12,
                                weight: FontWeight.w400,
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundButton(
                  title: "Start Bid",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const PaymentDialog();
                      },
                    );
                  },
                ),

              ],
            ),
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
