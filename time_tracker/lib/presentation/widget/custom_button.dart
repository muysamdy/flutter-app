import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.color,
    this.borderRadius,
    this.height,
    // this.textColor,
  }) : super(key: key);

  final Widget child;
  final Color? color;

  // final Color? textColor;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color ?? Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0.3)),
          ),
        ),
        child: child,
        onPressed: onPressed,
      ),
    );
  }
}

class SignInButton extends CustomElevatedButton {
  SignInButton({
    Key? key,
    Color color = Colors.white,
    Color textColor = Colors.black87,
    double borderRadius = 2.0,
    required VoidCallback onPressed,
    required String text,
    double height = 50.0,
  }) : super(
          key: key,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
            ),
          ),
          color: color,
          borderRadius: borderRadius,
          onPressed: onPressed,
          height: height,
        );
}

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    Color? color,
    Color? textColor,
    VoidCallback? onPressed,
    double? height,
    double? borderRadius,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(assetName),
              )
            ],
          ),
          color: color,
          onPressed: onPressed,
          height: height,
          borderRadius: borderRadius,
        );
}
