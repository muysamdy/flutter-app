import 'package:flutter/material.dart';
import 'package:time_tracker/presentation/widget/custom_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Tracker"),
        elevation: 2.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 48),
            SocialSignInButton(
              assetName: "assets/images/google-logo.png",
              text: "Sign in with Google",
              height: 50.0,
              textColor: Colors.black,
              borderRadius: 6.0,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SocialSignInButton(
              assetName: "assets/images/facebook-logo.png",
              text: "Sign in with Facebook",
              color: const Color(0xFF334D92),
              textColor: Colors.white,
              borderRadius: 6.0,
              height: 50.0,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SignInButton(
              text: "Sign in with Email",
              color: Colors.teal[700]!,
              textColor: Colors.white,
              borderRadius: 6.0,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            const Text(
              'or',
              style: TextStyle(fontSize: 14, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            SignInButton(
              text: "Go anonymous",
              color: Colors.lime[300]!,
              textColor: Colors.black,
              borderRadius: 6.0,
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
