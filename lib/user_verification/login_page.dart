import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recharge_setu/user_verification/signup_page.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 20,),
           Container(
             child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqKPUNt3IfPBbWGtTKv4xDn0Cqw2mk730htcm8wAcizIkVJxYa-3LvtLyBfHatZ3daCCE&usqp=CAU"),
           ),

            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      height: 560,
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
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          const Text("Enter Your Mobile Number",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.w600),),
                          const Text("We will send you OTP on that number",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                          const SizedBox(height: 20,),
                          SizedBox(
                            width: 300,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2,color: Colors.red)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InternationalPhoneNumberInput(
                                  inputDecoration: const InputDecoration(
                                      filled: true,
                                      border: InputBorder.none,
                                      hintText: 'Phone Number',
                                      fillColor: Colors.white
                                  ) ,


                                  onInputChanged: (PhoneNumber number) {
                                    print(number.phoneNumber);
                                  },
                                  onInputValidated: (bool value) {
                                    print(value);
                                  },
                                  selectorConfig: const SelectorConfig(
                                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                  ),
                                  ignoreBlank: false,
                                  autoValidateMode: AutovalidateMode.disabled,
                                  selectorTextStyle: TextStyle(color: Colors.black),
                                  initialValue: number,
                                  textFieldController: controller,
                                  formatInput: true,
                                  keyboardType:
                                  const TextInputType.numberWithOptions(signed: true, decimal: true),

                                  onSaved: (PhoneNumber number) {
                                    print('On Saved: $number');
                                  },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          InkWell(
                            child: Container(
                              height: 50,
                                width: 300,
                              color: Colors.orange,
                              child: const Center(child: Text("Send OTP",style: TextStyle(color: Colors.white,fontSize: 20),)),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.topToBottom,
                                  isIos: true,
                                  child: Signup(),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 10,),
                          RichText(
                            text: const TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'Dont have account?', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                                TextSpan(text: ' Sign Up',style: TextStyle(color: Colors.red,decoration: TextDecoration.underline)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
