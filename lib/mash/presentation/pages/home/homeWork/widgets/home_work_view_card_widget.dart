import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

import '../../../../utils/app_strings.dart';
import '../../../../utils/size_config.dart';

class HomeworkCard extends StatelessWidget {
  final String subject;
  final String task;
  final String assignedDate;
  final String submissionDate;
  final VoidCallback onTap;

  const HomeworkCard({
    super.key,
    required this.subject,
    required this.task,
    required this.assignedDate,
    required this.submissionDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.white,
          ),
        ),
        elevation: 3,
        child: InkWell(
          splashColor: AppColors.white,
          highlightColor: AppColors.primaryColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subject,
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(16),
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                Text(
                  task,
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(16),
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                ),
                Text(
                  'Assigned Date: $assignedDate',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    height: 1.7,
                  ),
                ),
                Text(
                  'Maths practice book 18&19',
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(14),
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    height: 1.5,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Submission Date: $submissionDate',
                      style: TextStyle(
                        fontSize: SizeConfig.textSize(14),
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                        height: 1.5,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          AppStrings.details,
                          style: TextStyle(
                            fontSize: SizeConfig.textSize(15),
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
