import 'package:animated_rating_bar/animated_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.rating,
    required this.index,
  });

  final int index;
  final TeacherRatingQuestionsEntity rating;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(10),
      height: SizeConfig.height(120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$index . ${rating.questions}",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: SizedBox(
              width: size.width,
              child: AnimatedRatingBar(
                activeFillColor: AppColors.yellow,
                strokeColor: Colors.grey,
                initialRating: 0,
                height: 65,
                width: MediaQuery.of(context).size.width,
                animationColor: Colors.purple,
                onRatingUpdate: (value) {
                  rating.rating = value.toInt();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
