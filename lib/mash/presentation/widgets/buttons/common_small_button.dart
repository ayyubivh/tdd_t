

import 'package:flutter/material.dart';

class CommonSmallButton extends StatelessWidget {
  const CommonSmallButton({super.key,required this.onPress,required this.title,required this.prefixIcon,required this.color});
  final VoidCallback onPress;
  final String title;
  final IconData prefixIcon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: color
      ),
      icon: Icon(prefixIcon),
        onPressed: onPress, label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Text(title),
        ) );
  }
}
