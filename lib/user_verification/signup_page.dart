import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS449M1oWQ6r9NKeJWkaAGoEcDN-PaKjDPlGbYorKfAvXoRPh_Qa5rnw1mCz6OhQ6hcGds&usqp=CAU",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter your username',
                      ),
                    ),
                  ),
                ],
              ),
              // Add your commented-out code here
            ],
          ),
        ),
      ),
    );
  }
}
