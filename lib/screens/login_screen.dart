import 'package:flutter/material.dart';
import 'package:number/screens/verification_code_screen.dart';
import 'package:number/utils/colors.dart';
import 'package:number/widget/reusable_button.dart';
import 'package:number/widget/reusable_text.dart';
import 'package:number/widget/reusable_textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
               ReusableText(
                title: "Welcome Back",
                size: 20,
                weight: FontWeight.w300,
                color: whiteColor.withOpacity(0.8),
              ),
              const SizedBox(height: 5,),
               const ReusableText(
                title: "Login to continue.",
                size: 26,
                weight: FontWeight.w700,
                color: whiteColor,
              ),
              const SizedBox(height: 20,),
              const ReusableTextForm(hintText: "Mobile Number",),
              const SizedBox(height: 30,),
              ReusableButton(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const VerificationCode();
                }),);
              }, title: "Sent OTP"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ReusableText(
                    title: "Don’t have an account?",
                    weight: FontWeight.w300,
                    color: whiteColor,
                  ),
                  TextButton(onPressed: (){

                  }, child:const ReusableText(
                    title: "Sign up",
                    weight: FontWeight.w400,
                    color: buttonColor,
                  ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
