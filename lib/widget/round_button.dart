import 'package:flutter/material.dart';
import 'package:number/widget/reusable_text.dart';

import '../utils/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const RoundButton({
    super.key, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonColor,
        ),
        child:  ReusableText(title: title,size: 18,weight: FontWeight.w700,),
      ),
    );
  }
}