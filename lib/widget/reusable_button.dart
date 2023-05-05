import 'package:flutter/material.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/reusable_text.dart';

class ReusableButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const ReusableButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor,
        ),
        child: ReusableText(
          title: title,
          weight: FontWeight.w700,
          size: 16,
          color: blackColor,
        ),
      ),
    );
  }
}
