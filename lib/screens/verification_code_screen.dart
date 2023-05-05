import 'package:flutter/material.dart';
import 'package:number/screens/bottom_nav_bar.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/otp_text_field.dart';
import 'package:number/widget/reusable_button.dart';
import 'package:number/widget/reusable_text.dart';
import 'package:number/widget/reusable_textformfield.dart';

import 'home_screen.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              const ReusableText(
                title: "Verification Code",
                size: 26,
                weight: FontWeight.w700,
                color: whiteColor,
              ),
              const SizedBox(height: 5,),
               ReusableText(
                title: "An 4 digit code has been sent to your phone number \n+971565656453",
                weight: FontWeight.w400,
                color: whiteColor.withOpacity(0.8),
              ),
              const SizedBox(height: 30,),
              Row(
                children:  [
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  const SizedBox(width: 20,),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  const SizedBox(width: 20,),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  const SizedBox(width: 20,),
                  OtpTextField(
                    onChanged: (v){
                      if(v.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  const ReusableText(
                    title: "Don't receive the OTP?",
                    weight: FontWeight.w300,
                    color: whiteColor,
                  ),
                  TextButton(onPressed: (){}, child:const ReusableText(
                    title: "Resend OTP",
                    weight: FontWeight.w400,
                    color: buttonColor,
                  ),)
                ],
              ),
              const SizedBox(height: 30,),
              ReusableButton(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return  const BottomNavBar();
                }));
              }, title: "Submit"),

            ],
          ),
        ),
      ),
    );
  }
}
