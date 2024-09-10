import 'package:e_commerce/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce/common/widget/button/basic_app_button.dart';
import 'package:e_commerce/presentation/auth/pages/create_page.dart';
import 'package:e_commerce/presentation/auth/pages/enter_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

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
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
            const SizedBox(
              height: 20,
            ),
            _createAccount(context)
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

Widget _emailField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(hintText: "Enter Email"),
  );
}

Widget _continueButton(BuildContext context) {
  return BasicAppButton(
    onPressed: () {
      AppNavigator.pushReplacement(context, const EnterPasswordPage());
    },
    title: "Continue",
  );
}

Widget _createAccount(BuildContext context) {
  return RichText(
    text: TextSpan(children: [
      const TextSpan(text: "Do you have an account ? "),
      TextSpan(
          text: 'Create one',
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CreatePage()));
            },
          style: const TextStyle(fontWeight: FontWeight.bold))
    ]),
  );
}
