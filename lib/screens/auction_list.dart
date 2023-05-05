import 'package:flutter/material.dart';
import 'package:number/screens/auction.dart';
import 'package:number/widget/reusable_text.dart';

import '../utils/colors.dart';
import '../widget/pic_icon.dart';

class AuctionList extends StatelessWidget {
  const AuctionList({Key? key}) : super(key: key);

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
            title: "Auction List",
            size: 20,
            weight: FontWeight.w700,
            color: whiteColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: List.generate(5, (index){
                return  Container(
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
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const SizedBox(
                              height: 5,
                            ),
                            const ReusableText(
                              title: "Starting Price",
                              weight: FontWeight.w400,
                              size: 10,
                              color: whiteColor,
                            ),
                            const SizedBox(height: 10,),
                            const ReusableText(
                              title: "QAR 600",
                              weight: FontWeight.w700,
                              color: buttonColor,
                            ),
                            Spacer(),
                            ReusableText(
                              title: "Auction Period",
                              weight: FontWeight.w400,
                              size: 10,
                              color: whiteColor.withOpacity(0.6),
                            ),
                            const SizedBox(height: 10,),
                            const ReusableText(
                              title: "2 Days",
                              weight: FontWeight.w400,
                              color: whiteColor,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return const Auction();
                          }));
                        },
                        child: Container(
                          height: 32,
                          margin: const EdgeInsets.only(top: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: buttonColor.withOpacity(0.1)
                          ),
                          child: Row(
                            children: [
                              const PicIcon(image: "assets/icons/met.svg",color: buttonColor,),
                              const SizedBox(width: 3,),
                              ReusableText(title: 12.toString(),size: 12,color: whiteColor,),
                              const SizedBox(width: 3,),
                              ReusableText(title: "bids",size: 12,color: whiteColor.withOpacity(0.5),),
                              const SizedBox(width: 2,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ); 
              }),
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
