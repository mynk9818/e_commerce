import 'package:e_commerce/common/widget/button/basic_app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 3, 60),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signText(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
            const SizedBox(
              height: 20,
            ),
            _forgotAccount(context)
          ],
        ),
      ),
    );
  }
}

Widget _signText(BuildContext context) {
  return const Text(
    "Sign in",
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
  );
}

Widget _passwordField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(hintText: "Enter Email"),
  );
}

Widget _continueButton(BuildContext context) {
  return BasicAppButton(
    onPressed: () {},
    title: "Continue",
  );
}

Widget _forgotAccount(BuildContext context) {
  return RichText(
    text: TextSpan(children: [
      const TextSpan(text: "Forgot Password ? "),
      TextSpan(
          text: 'Reset',
          recognizer: TapGestureRecognizer()..onTap = () {},
          style: const TextStyle(fontWeight: FontWeight.bold))
    ]),
  );
}
