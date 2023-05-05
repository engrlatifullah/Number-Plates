import 'package:flutter/material.dart';
import 'package:number/screens/number_screen.dart';
import 'package:number/widget/pic_icon.dart';
import 'package:number/widget/reusable_text.dart';

import '../utils/colors.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int _index = 0 ;
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
            title: "Wallet",
            size: 20,
            weight: FontWeight.w700,
            color: whiteColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        opacity: 0.1,
                        alignment: Alignment.centerRight,
                        image: AssetImage(
                          "assets/images/gr.png",
                        )),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        blackColor,
                        Color(0xFF302201),
                      ],
                    ),
                    border: Border.all(
                      color: buttonColor.withOpacity(0.3),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: buttonColor.withOpacity(0.2)),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: blackColor,
                                border: Border.all(color: buttonColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableText(
                                title: "Good morning",
                                size: 15,
                                color: whiteColor.withOpacity(0.8),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const ReusableText(
                                title: "Thameem Zaid",
                                size: 18,
                                weight: FontWeight.w600,
                                color: whiteColor,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ReusableText(
                        title: "Your wallet balance",
                        size: 15,
                        color: whiteColor.withOpacity(0.8),
                      ),
                      Row(
                        children: [
                          ReusableText(
                            title: "QAR",
                            size: 20,
                            weight: FontWeight.w400,
                            color: whiteColor.withOpacity(0.8),
                          ),
                          const ReusableText(
                            title: "1200",
                            size: 20,
                            weight: FontWeight.w700,
                            color: whiteColor,
                          ),
                          const Spacer(),
                          Container(
                            height: 40,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: buttonColor,
                            ),
                            child: const ReusableText(
                              title: "Refund",
                              size: 16,
                              weight: FontWeight.w600,
                              color: blackColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: buttonColor.withOpacity(0.3),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return const Number();
                          }),);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            children: const [
                              PicIcon(image: "assets/icons/cred.svg"),
                              SizedBox(
                                width: 10,
                              ),
                              ReusableText(
                                title: "Credits",
                                size: 16,
                                color: whiteColor,
                              ),
                              Spacer(),
                              ReusableText(
                                title: "QAR 400",
                                size: 16,
                                color: whiteColor,
                                weight: FontWeight.w400,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: whiteColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: buttonColor.withOpacity(0.3),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          children: const [
                            PicIcon(image: "assets/icons/cred.svg"),
                            SizedBox(
                              width: 10,
                            ),
                            ReusableText(
                              title: "Cash",
                              size: 16,
                              color: whiteColor,
                            ),
                            Spacer(),
                            ReusableText(
                              title: "QAR 0.00",
                              size: 16,
                              color: whiteColor,
                              weight: FontWeight.w400,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: whiteColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: buttonColor.withOpacity(0.3),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: ReusableText(title: "Transaction Log",color: whiteColor,size: 16,weight: FontWeight.w400,),
                      ),
                      Divider(
                        color: buttonColor.withOpacity(0.3),
                      ),

                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    _index = 0;
                                  });
                                },
                                child: ReusableText(title: "All",size: 16,weight: FontWeight.w400,color: _index == 0 ? buttonColor :  whiteColor.withOpacity(0.5),)),
                            const SizedBox(width: 20,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    _index = 1;
                                  });
                                },
                                child: ReusableText(title: "Credit",size: 16,weight: FontWeight.w400,color:_index == 1 ? buttonColor :  whiteColor.withOpacity(0.5),)),
                            const SizedBox(width: 20,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    _index = 2;
                                  });
                                },
                                child: ReusableText(title: "Cash",size: 16,weight: FontWeight.w400,color: _index == 2 ? buttonColor :  whiteColor.withOpacity(0.5),)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Stack(
                        children: [

                         Container(
                           height: 1,
                           width: double.infinity,
                           color: buttonColor.withOpacity(0.3),
                         ),
                          Row(
                            children: [
                              Row(
                                children: List.generate(3, (index){
                                  return Container(
                                    height: 2,
                                    width: 50,
                                    color: index == _index ? buttonColor : transparentColor,
                                  );
                                }),
                              )
                            ],
                          )
                        ],
                      ),

                      const SizedBox(height: 100,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
