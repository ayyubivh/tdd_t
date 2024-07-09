import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

class QuizQuestionPage extends StatefulWidget {
  const QuizQuestionPage({super.key});

  @override
  State<QuizQuestionPage> createState() => _QuizQuestionPageState();
}

class _QuizQuestionPageState extends State<QuizQuestionPage> {
  int _counter = 30;
  Timer? _timer;
  Color _progressColor = Colors.purple;
  bool timerEnd = false;
  int _selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
          if (_counter == 5) {
            _progressColor =
                Colors.red; // Change color when 5 seconds remaining
          }
        } else {
          _timer?.cancel();
          timerEnd = true;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: questionsBody(context),
    );
  }

  void _selectCard(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = -1;
      } else {
        _selectedIndex = index;
      }
    });
  }

  questionsBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.quizBgGradient),
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  AppAssets.quizQuestionScreenBG,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  spacer30,
                  Text(
                    'Question 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.textSize(25),
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w600),
                  ),
                  spacer30,
                  Text(
                    'To whom did Dr. Ambedkar present the functioning of the Reserve Bank of India?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.white,
                        fontSize: SizeConfig.textSize(18)),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: size.height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                spacer20,
                timerEnd
                    ? const Text(
                        'Time Up!',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      )
                    : Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: 1 - (_counter / 30),
                            valueColor:
                                AlwaysStoppedAnimation<Color>(_progressColor),
                            strokeWidth: 3,
                          ),
                          Text(
                            '$_counter',
                            style:
                                TextStyle(fontSize: 20, color: _progressColor),
                          ),
                        ],
                      ),
                spacer40,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: size.height * 0.47,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return spacer20;
                    },
                    itemCount: 4, // Number of cards
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _selectCard(index);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: SizeConfig.height(55),
                          width: size.width * 0.9,
                          decoration: _selectedIndex == index
                              ? BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: AppColors.quizAnswerGradient,
                                )
                              : BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade200),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual',
                                style: TextStyle(
                                    color: _selectedIndex == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                nextButton(size)
              ],
            ),
          ),
        ],
      ),
    );
  }

  nextButton(Size size) {
    return InkWell(
      onTap: () => GoRouter.of(context).pushNamed(AppPages.quizCompletedScreen),
      child: Container(
        height: SizeConfig.height(60),
        width: size.width * 0.4,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                blurRadius: 5.0,
              ),
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: AppColors.quizAnswerGradient),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'next',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Comfortaa',
                  fontSize: 20),
            ),
            spacerWidth10,
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  /* questionTile(Size size){
    return InkWell(
      onTap: (){
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
         height: SizeConfig.height(70),
        width: size.width*0.9,
        decoration: isSelected? BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: AppColors.quizAnswerGradient
        ): BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade200
        ),
        child: Center(

        ),
      ),
    );
  }*/
}
