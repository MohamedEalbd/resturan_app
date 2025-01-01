import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;

  // final IconData icon;
  final String text;
  final bool? active;
  final bool isImage;
  final String image;

  const CustomButtonAppBar({
    super.key,
    this.onPressed,
    // required this.icon,
    required this.text,
    this.active,
    this.isImage = false,
    this.image = "",
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            color: active == true ? Color(0xff2B3D16) : null,
          ),
        ],
      ),
    );
  }
}
