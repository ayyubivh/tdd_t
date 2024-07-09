

import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  const CommonIconButton({super.key,required this.icon,required this.onTap});

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onTap, icon: Icon(icon));
  }
}
