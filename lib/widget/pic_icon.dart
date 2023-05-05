import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PicIcon extends StatelessWidget {
  final String image;
  final Color ? color;
  const PicIcon({Key? key, required this.image, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 30,width: 30,
    child: SvgPicture.asset(image,color: color,),
    );
  }
}
