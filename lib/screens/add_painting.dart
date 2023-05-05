import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:number/screens/my_number.dart';
import '../utils/colors.dart';
import '../widget/reusable_text.dart';
import '../widget/round_button.dart';

class AddPainting extends StatefulWidget {
  const AddPainting({Key? key}) : super(key: key);

  @override
  State<AddPainting> createState() => _AddPaintingState();
}

class _AddPaintingState extends State<AddPainting> {
  final TextEditingController numberC = TextEditingController();
  String number = '';

  @override
  void dispose() {
    numberC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          centerTitle: true,
          elevation: 0,
          title: const ReusableText(
            title: "Auction",
            size: 16,
            weight: FontWeight.w700,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: yellowColor),
                      gradient: LinearGradient(
                          colors: [brownColor, brownColor.withOpacity(0.4)])),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 2),
                        color: whiteColor),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomPaint(
                          //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          size: const Size(100, 100),
                          painter: RPSCustomPainter(),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 5, right: 15),
                            child: Text(
                              "Q\nA\nT\nA\nR",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const ReusableText(
                                  title: "قطر",
                                  size: 60,
                                  weight: FontWeight.bold),
                              ReusableText(
                                  title: number,
                                  size: 60,
                                  weight: FontWeight.bold),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: "Plate Type",
                  size: 16,
                  weight: FontWeight.w700,
                  color: whiteColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: buttonColor),
                        ),
                        child: const ReusableText(
                          title: "Private Transfer",
                          weight: FontWeight.w700,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: buttonColor),
                        child: const ReusableText(
                          title: "Private Transfer",
                          weight: FontWeight.w700,
                          color: blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFEAD096),
                        Color(0xFFA0712B),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: "Enter plate number",
                        weight: FontWeight.w700,
                        size: 16,
                        color: blackColor.withOpacity(0.8),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: numberC,
                        decoration: InputDecoration(
                          hintText: "Enter Number",
                          hintStyle: const TextStyle(color: whiteColor),
                          filled: true,
                          fillColor: blackColor.withOpacity(0.8),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = numberC.text;
                          });
                        },
                        child: Container(
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: whiteColor),
                          ),
                          child: const ReusableText(
                            title: "1X2Y3Z",
                            weight: FontWeight.w700,
                            color: blackColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: whiteColor.withOpacity(0.8),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ReusableText(
                      title: "Please note",
                      color: whiteColor,
                      size: 12,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title:
                      "This field only accept numbers (0,1,2,3... and letters and letters X, Y and Z which numbers must not be present on the plate.",
                  color: whiteColor,
                  weight: FontWeight.w400,
                  size: 13,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: buttonColor.withOpacity(0.5),
                    ),
                    color: blackColor.withOpacity(0.8),
                  ),
                  child: Column(
                    children: [
                      const ReusableText(
                        title:
                            "is the plate officially registered as a distinguished traffic sign?",
                        weight: FontWeight.w400,
                        color: lightGreyColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: buttonColor),
                            ),
                            child: const ReusableText(
                              title: "No",
                              size: 12,
                              weight: FontWeight.w700,
                              color: whiteColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: buttonColor),
                            child: const ReusableText(
                              title: "Yes",
                              size: 12,
                              weight: FontWeight.w700,
                              color: blackColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: "preferable contact type ",
                  size: 18,
                  weight: FontWeight.w700,
                  color: whiteColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Container(
                //   padding: const EdgeInsets.all(15),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(12),
                //     border: Border.all(
                //       color: buttonColor.withOpacity(0.5),
                //     ),
                //     color: darkBrownColor.withOpacity(0.1),
                //   ),
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Container(
                //             height: 50,
                //             width: 60,
                //             alignment: Alignment.center,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               color: darkGreyColor.withOpacity(0.8),
                //             ),
                //             child: const Icon(
                //               FontAwesomeIcons.whatsapp,
                //               color: Color(0xFF128C7E),
                //             ),
                //           ),
                //           const Spacer(),
                //           Container(
                //             height: 50,
                //             width: 60,
                //             alignment: Alignment.center,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               color: darkGreyColor.withOpacity(0.8),
                //             ),
                //             child: const Icon(
                //               FontAwesomeIcons.phone,
                //               color: whiteColor,
                //             ),
                //           ),
                //           const Spacer(),
                //           Container(
                //             height: 50,
                //             width: 60,
                //             alignment: Alignment.center,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               color: darkGreyColor.withOpacity(0.8),
                //             ),
                //             child: const Icon(
                //               FontAwesomeIcons.solidMessage,
                //               color: whiteColor,
                //             ),
                //           ),
                //           const Spacer(),
                //           const Icon(FontAwesomeIcons.copy,color: whiteColor,),
                //           const SizedBox(width: 10,),
                //           const ReusableText(title: "Copy",color: whiteColor,),
                //           const SizedBox(width: 10,),
                //         ],
                //       ),
                //
                //     ],
                //   ),
                // ),
                ContactButton(title: 'Whatsapp', onTap: () {  },),
                const SizedBox(
                  height: 20,
                ),
                ContactButton(title: 'Text message', onTap: () {  },),
                const SizedBox(
                  height: 20,
                ),
                ContactButton(title: 'Call', onTap: () {  },),
                const SizedBox(
                  height: 20,
                ),
                ContactButton(title: 'Chat by application', onTap: () {  },),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundButton(
                  title: 'Add Plate',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const MyNumber();
                    }));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ContactButton({
    super.key, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 62,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(
            color: buttonColor.withOpacity(0.5),
          ),
          color: darkRedColor.withOpacity(0.18),
        ),
        child: ReusableText(title: title,weight: FontWeight.w700,color: whiteColor,),
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
