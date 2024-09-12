import 'package:e_commerce/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce/common/widget/appbar/basic_appbar.dart';
import 'package:e_commerce/common/widget/button/basic_app_button.dart';
import 'package:e_commerce/presentation/auth/pages/enter_password.dart';
import 'package:e_commerce/presentation/auth/pages/sigin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: const Color.fromARGB(255, 8, 3, 60),
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signText(context),
            const SizedBox(
              height: 20,
            ),
            _firstNameField(context),
            const SizedBox(
              height: 20,
            ),
            _lastNameField(context),
            const SizedBox(
              height: 20,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _firstNameField(context),
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
    "Create Account",
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
  );
}

Widget _emailField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(hintText: "Email address"),
  );
}

Widget _firstNameField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(hintText: "First name"),
  );
}

Widget _lastNameField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(hintText: "Last name"),
  );
}

Widget _passwordField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(hintText: "Password"),
  );
}

Widget _continueButton(BuildContext context) {
  return BasicAppButton(
    onPressed: () {
      AppNavigator.push(context, const EnterPasswordPage());
    },
    title: "Continue",
  );
}

Widget _createAccount(BuildContext context) {
  return RichText(
    text: TextSpan(children: [
      const TextSpan(text: "Do you have an account ? "),
      TextSpan(
          text: 'Sign in',
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.pushReplacement(context, const SigninPage());
            },
          style: const TextStyle(fontWeight: FontWeight.bold))
    ]),
  );
}
