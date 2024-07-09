




import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/common_small_button.dart';

class FacilityCard extends StatelessWidget {
  final String description;
  final String title;
  final String buttonTitle;
  final VoidCallback onSubscribeTap;
  const FacilityCard({super.key, required this.description,required this.title, required this.onSubscribeTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 15, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context)
            .copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          expandedCrossAxisAlignment:
          CrossAxisAlignment.start,
          title:  Text(
           title,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
          children: <Widget>[
            const Text(
              "${AppStrings.description} :",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            spacer7,
            Text(
            "description",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.greyText),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CommonSmallButton(
                onPress: onSubscribeTap,
                title: buttonTitle,
                color: AppColors.primaryColor,
                prefixIcon: Icons.app_registration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
