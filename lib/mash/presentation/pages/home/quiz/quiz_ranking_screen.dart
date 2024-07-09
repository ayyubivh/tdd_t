import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

class ScrollPositionNotifier extends ChangeNotifier {
  bool _showFAB = false;

  bool get showFAB => _showFAB;

  set showFAB(bool value) {
    if (_showFAB != value) {
      _showFAB = value;
      notifyListeners();
    }
  }
}

class QuizRankingScreen extends StatefulWidget {
  const QuizRankingScreen({super.key});

  @override
  State<QuizRankingScreen> createState() => _QuizRankingScreenState();
}

class _QuizRankingScreenState extends State<QuizRankingScreen> {
  final ScrollController _scrollController = ScrollController();
  final ScrollPositionNotifier _scrollPositionNotifier =
      ScrollPositionNotifier();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >= 100) {
      _scrollPositionNotifier.showFAB = true;
    } else {
      _scrollPositionNotifier.showFAB = false;
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 700),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration:
            const BoxDecoration(gradient: AppColors.quizRankListGradient),
        child: CustomScrollView(
          slivers: [
            _header(context),
            _rankList(context, size),
          ],
          controller: _scrollController,
        ),
      ),
      // body: rankingBody(context),
      floatingActionButton: floatingButton(),
    );
  }

  _header(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SliverAppBar(
      title: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      expandedHeight: size.height * 0.4,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          height: size.height * 0.45,
          width: size.width,
          decoration: const BoxDecoration(gradient: AppColors.quizBgGradient),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(AppAssets.quizRankingBg),
              ),
              Column(
                children: [
                  spacer50,
                  rankingSection(size),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  rankingSection(Size size) {
    return Expanded(
      flex: 2,
      child: Container(
        height: size.height * 0.33,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                // color: Colors.red,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: SizeConfig.height(120),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: SizeConfig.height(90),
                              width: SizeConfig.height(90),
                              margin: const EdgeInsets.all(18),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          "https://cdn-icons-png.flaticon.com/512/3135/3135768.png"))),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Positioned(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    height: SizeConfig.height(18),
                                    width: SizeConfig.width(50),
                                    child: Center(
                                        child: shaderMask('1992 PT', 10.0)),
                                  ))
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                'Ayana K P\nVijayan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontFamily: 'Comfortaa'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(AppAssets.quizRank1))),
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: SizeConfig.height(130),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: SizeConfig.height(90),
                              width: SizeConfig.height(90),
                              margin: const EdgeInsets.all(18),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          "https://cdn-icons-png.flaticon.com/512/3135/3135768.png"))),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Positioned(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    height: SizeConfig.height(18),
                                    width: SizeConfig.width(50),
                                    child: Center(
                                        child: shaderMask('1992 PT', 10.0)),
                                  ))
                                ],
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Ayana K P\nVijayan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontFamily: 'Comfortaa'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(AppAssets.quizRank2))),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: SizeConfig.height(120),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: SizeConfig.height(90),
                              width: SizeConfig.height(90),
                              margin: const EdgeInsets.all(18),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          "https://cdn-icons-png.flaticon.com/512/3135/3135768.png"))),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Positioned(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    height: SizeConfig.height(18),
                                    width: SizeConfig.width(50),
                                    child: Center(
                                        child: shaderMask('1992 PT', 10.0)),
                                  ))
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                'Ayana K P\nVijayan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontFamily: 'Comfortaa'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(AppAssets.quizRank3))),
                        child: const Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _rankList(BuildContext context, Size size) {
    return SliverList(delegate: SliverChildBuilderDelegate((_, index) {
      return rankCard(size);
    }));
  }

/*_rankList( BuildContext context,Size size) {
    return SliverToBoxAdapter(
      child: Container(
        height: size.height * 0.6,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          gradient: AppColors.quizBgGradient
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
               color: Colors.purple.shade100,
               child: ListView.separated(
                   shrinkWrap: true,
                 itemCount: 10  ,
                   separatorBuilder: (context,index){
                     return spacer10;
                   },
                   itemBuilder: (context,index){
                 return rankCard(size);
               }),
              ),
            ),
          ],
        ),
      ),
    );
  }
*/
  rankCard(Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      padding: const EdgeInsets.all(3),
      height: SizeConfig.height(85),
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: const Color(0xffF7EAF6),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: ListTile(
          leading: leadingImage(
              'https://cdn-icons-png.flaticon.com/512/3135/3135768.png'),
          title: shaderMask('Ananya Mathew', 15.0),
          subtitle: const Text(
            '8th Standard',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          trailing: Container(
              height: SizeConfig.height(45),
              width: SizeConfig.height(45),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AppAssets.quizRankMedal,
                      ))),
              child: const Center(
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 20),
                ),
              )),
        ),
      ),
    );
  }

  leadingImage(urls) {
    return Container(
      height: SizeConfig.height(65),
      width: SizeConfig.width(65),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
          image: DecorationImage(image: CachedNetworkImageProvider(urls))),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            height: SizeConfig.height(18),
            width: SizeConfig.width(50),
            child: Center(child: shaderMask('1992 PT', 10.0)),
          ))
        ],
      ),
    );
  }

  shaderMask(title, textSize) {
    List<Color> gradientColors = const [Color(0xffDA44bb), Color(0xff8921aa)];
    return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (Rect bounds) => LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: gradientColors,
            ).createShader(bounds),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Comfortaa',
              fontSize: textSize),
        ));
  }

  floatingButton() {
    return AnimatedBuilder(
      animation: _scrollPositionNotifier,
      builder: (context, child) {
        return _scrollPositionNotifier.showFAB
            ? FloatingActionButton(
                onPressed: _scrollToTop,
                child: Icon(
                  Icons.arrow_upward,
                  color: AppColors.primaryColor,
                ),
              )
            : const SizedBox();
      },
    );
  }
}

/*

List<Color> gradientColors = const [
  Color(0xffDA44bb),
  Color(0xff8921aa)
];

ShaderMask(
blendMode: BlendMode.srcIn,
shaderCallback: (Rect bounds) => LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: gradientColors, // Gradient colors for the icon
).createShader(bounds),
child: const Text('View Answers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontFamily: 'Comfortaa',fontSize: 15),)),*/
