

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

class SubscribeDialogWidget extends StatelessWidget {
  const SubscribeDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              AppStrings.transportation,
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            spacer4,
            Divider(height: 2,color: AppColors.grey700,),
            spacer20,

            CommonSmallButton(onPress: (){}, title: AppStrings.checkAmount, prefixIcon: Icons.currency_rupee, color: AppColors.primaryColor),
            spacer20,
            const Align(
              alignment: Alignment.centerRight,
              child: Text('${AppStrings.amount} - \u20B9 12000' ,style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            spacer20,
            Divider(height: 2,color: AppColors.grey700,),
            spacer20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Your request button logic here
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(AppStrings.cancel),
                  ),
                ),ElevatedButton(
                  onPressed: () {
                    // Your request button logic here
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(AppStrings.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}