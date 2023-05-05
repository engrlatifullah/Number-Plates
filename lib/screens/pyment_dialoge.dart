import 'package:flutter/material.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/reusable_text.dart';
import 'package:number/widget/round_button.dart';

import 'add_painting.dart';

class PaymentDialog extends StatelessWidget {
  const PaymentDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: blackColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: buttonColor.withOpacity(0.5),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                const ReusableText(
                  title: "Make a Payment",
                  weight: FontWeight.w700,
                  color: whiteColor,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: redColor,
                    )),
              ],
            ),
          ),
          Divider(
            color: buttonColor.withOpacity(0.5),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: buttonColor.withOpacity(0.5),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      color: whiteColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ReusableText(
                      title: "Please Note",
                      size: 12,
                      weight: FontWeight.w400,
                      color: whiteColor,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title:
                      "maintaining a minimum 5% of Bid Amount in Wallet to cover any bids you  place, This will help you avoid any unsuccessful bids due to insufficient funds. ",
                  color: whiteColor,
                  size: 11,
                  weight: FontWeight.w400,
                ),

              ],
            ),
          ),
          Divider(
            color: buttonColor.withOpacity(0.5),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReusableText(title: "Enter amount",color: whiteColor,
                  size: 12,
                  weight: FontWeight.w400,),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration:  InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    filled: true,
                    fillColor: brownColor.withOpacity(0.2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                RoundButton(title: "Submit", onTap: (){

                },),
              ],
            ),
          )
        ],
      ),
    );
  }
}
