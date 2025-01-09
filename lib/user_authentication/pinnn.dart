import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
class Pinnn extends StatefulWidget {
  const Pinnn({super.key});

  @override
  State<Pinnn> createState() => _PinnnState();
}

class _PinnnState extends State<Pinnn> {
  @override
  Widget build(BuildContext context) {
    final defaltPinTheme = PinTheme(
      width: 50,
      height: 60,
      textStyle: TextStyle (
      color: Colors.blue,
          fontSize: 18
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      )
    );
    return Scaffold(
      body: Container(
        child: Pinput(
          length: 6,
          defaultPinTheme: defaltPinTheme,
          focusedPinTheme: defaltPinTheme.copyWith(
            decoration: defaltPinTheme.decoration!.copyWith(
              border: Border.all(color: Colors.red)
            )
          ),
          onCompleted: (pin) => debugPrint("pin===>"+pin),

        ),
      ),
    );
  }
}
