import 'package:flutter/material.dart';
import 'package:number/widget/reusable_text.dart';

import '../utils/colors.dart';
import '../widget/dark_plate_card.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: transparentColor,
          title: const ReusableText(title: "Number",weight: FontWeight.w700,color: whiteColor,size: 16,),
        ),
        body: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,childAspectRatio: 1.4
            ), itemBuilder: (index,context){
          return  DarkPlateCard(
            icon: InkWell(
              onTap: (){
                setState(() {
                  tap = !tap;
                });
              },
              child: Icon(
                tap ? Icons.favorite : Icons.favorite_border,
                color: tap ? buttonColor : buttonColor.withOpacity(0.24),
              ),
            ),);
        })
    ));
  }
}
