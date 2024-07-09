


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';

class InstalmentCard extends StatelessWidget {
  final String title;
  final String amount;
  final String validity;

  const InstalmentCard({super.key, required this.title, required this.amount,required this.validity});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 16),),
            SizedBox(height: 10),
            Text(AppStrings.amount+ ' : \u20B9$amount' , style: TextStyle(fontSize: 13),),
            SizedBox(height: 4),
            Text(AppStrings.validity+ ' : $validity' , style: TextStyle(fontSize: 13),),
          ],
        ),
      ),
    );
  }
}