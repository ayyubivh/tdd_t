import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

import '../../../router/app_pages.dart';

class QuizProfile extends StatelessWidget {
  const QuizProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profileBody(context),
    );
  }

  profileBody(BuildContext context) {
    SizeConfig().init;
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: size.height * 0.32,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SvgPicture.asset(
                      AppAssets.quizProfileGradientBg,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: SvgPicture.asset(
                          fit: BoxFit.fitHeight,
                          AppAssets.quizProfileEclipseBg,width: size.width,)),
                    Positioned(
                      left: SizeConfig.width(15),
                      top: SizeConfig.height(45),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontFamily: 'Comfortaa'),
                      ),
                    ),
                     Positioned(
                        bottom: 5,
                        child: Container(
                          height: SizeConfig.height(150),
                          width: SizeConfig.height(150),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider('https://res.cloudinary.com/demo/image/upload/v1312461204/sample.jpg',)
                            )
                          ),
                        ),)
                  ],
                )),
            const Text(
              'Adithya Kumari',
              style: TextStyle(fontSize: 18, fontFamily: 'Comfortaa'),
            ),
            const Text(
              '7th Standard',
              style: TextStyle(fontSize: 14, fontFamily: 'Comfortaa'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(AppAssets.quizStartImage),
            ),
            spacer20,
            quizDetails(size),
            viewRankingButton(size,context)
          ],
        ),
      ),
    );
  }


  viewRankingButton(Size size, BuildContext context){
      return GestureDetector(
        onTap: ()=> GoRouter.of(context).pushNamed(AppPages.quizRankingScreen),
        child: Container(
          height:  SizeConfig.height(50),
          width: size.width * 0.5,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                blurRadius: 5.0,
              ),],
              borderRadius: BorderRadius.circular(50),
              gradient: AppColors.quizAnswerGradient
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('View Rankings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontFamily: 'Comfortaa',fontSize: 18),),
              spacerWidth10,
              Icon(Icons.arrow_forward_ios,color: Colors.white,)
            ],
          ),
        ),
      );

  }

  Widget quizDetails(Size size) {
    List<String> title = [
      'Current Ranking',
      'Top Performance',
      'Points',
      'Assigned Quiz',
      'Best Timing'
    ];
    List<String> details = ['01', '10', '11', '12', '04:15'];
    List<String> images = [
      AppAssets.quizProfileIcon1,
      AppAssets.quizProfileIcon2,
      AppAssets.quizProfileIcon3,
      AppAssets.quizProfileIcon4,
      AppAssets.quizProfileIcon5,
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: SizeConfig.height(60*5),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return item(title[index], images[index], details[index]);
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only( left: 20, right: 20),
              child: Divider(
                height: 2,
                color: Colors.grey.shade300,
              ),
            );
          },
          itemCount: 5),
    );
  }

  Widget item(title, images, detail) {
    List<Color> gradientColors = const [Color(0xffDA44bb), Color(0xff8921aa)];
    return SizedBox(
      height: SizeConfig.height(50),
      child: ListTile(
        title: Text(title),
        leading: Image.asset(images),
        trailing: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: gradientColors, // Gradient colors for the icon
                ).createShader(bounds),
            child: Text(
              detail,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Comfortaa',
                  fontSize: 18),
            )),
      ),
    );
  }
}
