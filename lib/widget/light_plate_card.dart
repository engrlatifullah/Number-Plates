import 'package:flutter/material.dart';

import '../utils/colors.dart';


class LightPlateCard extends StatelessWidget {
  final Widget icon;
  const LightPlateCard({
    super.key, required this.icon,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: 173,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor.withOpacity(0.47)
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor.withOpacity(0.3)),
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
                height: 32,
                width: 95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: buttonColor),
                  color: whiteColor.withOpacity(0.3)
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "QAR",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                         ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "600",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              icon,
            ],
          )
        ],
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