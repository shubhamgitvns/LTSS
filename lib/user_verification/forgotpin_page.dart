import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';

import '../app_text.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  final pinController = TextEditingController();
  final newpinControler = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        // MaterialState.hovered,
        // MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Colors.green;
    }
    const focusedBorderColor = Colors.red;
    const fillColor = Colors.white;
    const borderColor = Colors.red;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(19),
          border: Border.all(color: borderColor),
          color: Colors.white
      ),
    );
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                  height: 250,
                  child: Image(image: AssetImage('images/change.png'))),

              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 580,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.red,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            // const SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Forgot Pin",style: Text_Style.heder,),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Text("All the personal information tobe fill",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Row(
                              children: [
                                Text("Enter 6-Digit OTP",style: TextStyle(color: Colors.red),)
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Form(
                                  key: formKey,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Directionality(
                                        // Specify direction if desired
                                        textDirection: TextDirection.ltr,
                                        child: Pinput(
                                          //Boxes number
                                          length: 6,
                                          controller: pinController,
                                          focusNode: focusNode,
                                          androidSmsAutofillMethod:
                                          AndroidSmsAutofillMethod.smsUserConsentApi,
                                          listenForMultipleSmsOnAndroid: true,
                                          defaultPinTheme: defaultPinTheme,
                                          separatorBuilder: (index) => const SizedBox(width: 3),
                                          validator: (value) {
                                            return value == '222222' ? null : 'Pin is incorrect';
                                          },
                                          // onClipboardFound: (value) {
                                          //   debugPrint('onClipboardFound: $value');
                                          //   pinController.setText(value);
                                          // },
                                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                                          onCompleted: (pin) {
                                            debugPrint('onCompleted: $pin');
                                          },
                                          onChanged: (value) {
                                            debugPrint('onChanged: $value');
                                          },
                                          cursor: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(bottom: 9),
                                                width: 10,
                                                height: 1,
                                                color: Colors.indigo,
                                              ),
                                            ],
                                          ),
                                          focusedPinTheme: defaultPinTheme.copyWith(
                                            decoration: defaultPinTheme.decoration!.copyWith(
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(color: focusedBorderColor),
                                            ),
                                          ),
                                          submittedPinTheme: defaultPinTheme.copyWith(
                                            decoration: defaultPinTheme.decoration!.copyWith(
                                              color: fillColor,
                                              borderRadius: BorderRadius.circular(19),
                                              border: Border.all(color: focusedBorderColor),
                                            ),
                                          ),
                                          errorPinTheme: defaultPinTheme.copyBorderWith(
                                            border: Border.all(color: Colors.redAccent),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text("Enter New Pin",style: TextStyle(color: Colors.red)),
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextBox(),
                                TextBox(),
                                TextBox(),
                                TextBox(),

                              ],
                            ),
                            const SizedBox(height: 20,),

                            const Row(
                              children: [
                                Text("Enter Confirm Pin",style: TextStyle(color: Colors.red)),
                              ],
                            ),

                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextBox(),
                                TextBox(),
                                TextBox(),
                                TextBox(),

                              ],
                            ),

                            const SizedBox(
                              height: 60,
                            ),
                            InkWell(
                              child: Container(
                                height: 50,
                                width: 300,
                                color: Colors.red,
                                child: const Center(child: Text("Change",style: TextStyle(color: Colors.white,fontSize: 20),)),
                              ),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.topToBottom,
                                    isIos: true,
                                    child: const SignUp(),
                                  ),
                                );
                              },
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5), // Optional: Add border radius
      ),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          counterText: "",
          // border: Border.all(color: Colors.red),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red), // Red focus border
            borderRadius: BorderRadius.circular(5), // Optional: Add border radius
          ),
        ),
      ),
    );
  }
}