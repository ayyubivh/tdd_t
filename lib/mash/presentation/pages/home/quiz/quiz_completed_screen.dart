

import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/animated_widget.dart';

class QuizCompletedScreen extends StatefulWidget {
 const  QuizCompletedScreen({super.key});

  @override
  State<QuizCompletedScreen> createState() => _QuizCompletedScreenState();
}

class _QuizCompletedScreenState extends State<QuizCompletedScreen> {
  final  _confettiController = ConfettiController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _confettiController.play();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: quizCompletedBody(context),
    );
  }

  quizCompletedBody(BuildContext context) {
    SizeConfig().init(context);
    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: AppColors.quizBgGradient
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ConfettiWidget(confettiController: _confettiController,
          shouldLoop: true,
              numberOfParticles: 100,
              blastDirection: -pi / 2,
            blastDirectionality: BlastDirectionality.explosive,
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(AppAssets.fireCracksQuizBg)),
          Align(
            alignment: Alignment.center,
            child: CustomAnimatedWidget(
                type: AnimationTypes.rightToLeft ,
                child: Image.asset(AppAssets.quizFinishBoy)),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              height: size.height * 0.25,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.congrats,style: TextStyle(fontSize: 30,color: AppColors.white,fontFamily: 'Comfortaa'),),
                  spacer10,
                  Text("Your Total points is 20\nall the best for next exam",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: AppColors.white,fontFamily: 'Comfortaa'),),
                  spacer20,
                  viewAnswerButton(size),
                  spacer20
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  viewAnswerButton(Size size) {
    List<Color> gradientColors = const [
      Color(0xffDA44bb),
      Color(0xff8921aa)
    ];
    return InkWell(
      onTap: (){},
      child: Container(
        height:  SizeConfig.height(60),
        width: size.width * 0.6 ,
        decoration: BoxDecoration(
          color: Colors.white,
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              blurRadius: 5.0,
            ),],
            borderRadius: BorderRadius.circular(50),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: gradientColors, // Gradient colors for the icon
                ).createShader(bounds),
                child: const Text('View Answers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontFamily: 'Comfortaa',fontSize: 20),)),
            spacerWidth10,
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) => LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradientColors, // Gradient colors for the icon
          ).createShader(bounds),
          child: const Icon(
            Icons.arrow_forward_ios,
          ),
        )
          ],
        ),
      ),
    );
  }
}
