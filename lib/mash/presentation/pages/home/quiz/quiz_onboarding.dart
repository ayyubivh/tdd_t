import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: AppThemes.quizTheme,
    debugShowCheckedModeBanner: false,
    home: const QuizOnBoarding(),
  ));
}

class QuizOnBoarding extends StatefulWidget {
  const QuizOnBoarding({super.key});

  @override
  State<QuizOnBoarding> createState() => _QuizOnBoardingState();
}

class _QuizOnBoardingState extends State<QuizOnBoarding> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBoardingBody(),
    );
  }

  onBoardingBody() {
    List<Widget> onBoardingPageList = [
      onBoardingPages(AppAssets.onBoard1, AppStrings.onBoard1Title,
         AppStrings.onBoard1Desc),
      onBoardingPages(AppAssets.onBoard2, AppStrings.onBoard2Title,
          AppStrings.onBoard1Desc),
      onBoardingPages(AppAssets.onBoard3, AppStrings.onBoard3Title,
          AppStrings.onBoard3Desc)
    ];
    var size = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Color(0xfffe439e),
          ],
        ),
      ),
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: onBoardingPageList.length,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemBuilder: (BuildContext context, int index) {
              return onBoardingPageList[index % onBoardingPageList.length];
            },
          ),
          Positioned(
              bottom: 100,
              right: 0,
              left: 0,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                        onBoardingPageList.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: currentPage == index
                                        ? Colors.white
                                        : Colors.purple.shade400,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  width: 25,
                                  height: 5,
                                ),
                                onTap: () {
                                  _controller.animateToPage(index,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                },
                              ),
                            )),
                  ),
                ),
              )),
          Positioned(
              right: 20,
              bottom: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: ()=> GoRouter.of(context).pushNamed(AppPages.quizGetReadyScreen),
                child: const Padding(
                  padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(fontSize: 20, color: Colors.purple),
                      ),
                      spacerWidth10,
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.purple,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget onBoardingPages(String img, title, descText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          img,
          height: MediaQuery.of(context).size.height / 3.5,
        ),
        spacer40,
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        spacer30,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            descText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        spacer40
      ],
    );
  }
}
