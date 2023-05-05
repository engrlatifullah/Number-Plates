import 'package:flutter/material.dart';
import 'package:number/widget/reusable_text.dart';

import '../utils/colors.dart';

class ReusableRow extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ReusableRow({
    super.key, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(title: title,size: 16,weight: FontWeight.w400,color: whiteColor,),
            const Icon(Icons.arrow_forward_ios,color: whiteColor,)
          ],
        ),
      ),
    );
  }
}