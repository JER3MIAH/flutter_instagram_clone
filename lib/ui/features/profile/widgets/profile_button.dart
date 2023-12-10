import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String text;
  const ProfileButton({
    super.key,
    this.padding,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      padding: padding,
      color: Colors.grey[300],
      elevation: 0,
      child: Text(text),
    );
  }
}
