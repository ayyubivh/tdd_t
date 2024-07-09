


import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String title;
  const CommonIconButton({super.key, required this.icon, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: 5
      ),
        onPressed: onTap,
    icon: Icon(icon),
      label: Text(title),
    );
  }
}
