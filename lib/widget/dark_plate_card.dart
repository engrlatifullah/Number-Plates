import 'package:flutter/material.dart';
import 'package:number/widget/reusable_text.dart';

import '../utils/colors.dart';

class DarkPlateCard extends StatelessWidget {
  final Widget icon;
  const DarkPlateCard({
    super.key, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: 154,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
                    color: darkGreyColor),
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
              Spacer(),
              icon
            ],
          )
        ],
      ),
    );
  }
}
