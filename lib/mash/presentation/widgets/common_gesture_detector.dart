

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class CommonGestureDetector extends StatelessWidget {
  const CommonGestureDetector({super.key,required this.onTap,required this.icon, required this.textController,required this.hintText});

  final VoidCallback onTap;
  final TextEditingController textController ;
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
            elevation: 2,
            surfaceTintColor: AppColors.primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: textController,
                          enabled: false,
                          style:  TextStyle(color: AppColors.black),
                          decoration:  InputDecoration(
                            hintText: hintText,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(icon,color: AppColors.primaryColor,),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
