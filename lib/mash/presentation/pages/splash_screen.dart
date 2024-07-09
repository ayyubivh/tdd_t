// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:mash/core/hive_service.dart';
// import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
// import 'package:mash/mash/presentation/router/app_pages.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _init();
//   }

//   _init() async {
//     try {
//       final token =
//           await HiveService().getBox<String>(boxName: LocalStorageNames.token);
//       if (token.isNotEmpty) {
//         context.goNamed(AppPages.home);
//       } else {
//         context.goNamed(AppPages.login);
//       }
//     } catch (e) {
//       print('Error in SplashScreen: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           "Splash screen",
//           style: Theme.of(context).textTheme.headlineLarge,
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

import '../../../core/hive_service.dart';
import '../../data/remote/routes/local_storage_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  double _opacity = 0;
  bool _value = true;
  double _opacity2 = 0.8;

  Future<String> _init() async {
    try {
      final token =
          await HiveService().getBox<String>(boxName: LocalStorageNames.token);
      if (token.isNotEmpty) {
        return AppPages.home;
      } else {
        return AppPages.login;
      }
    } catch (e) {
      return AppPages.login;
    }
  }

  @override
  void initState() {
    FocusManager.instance.primaryFocus?.unfocus();
    super.initState();

    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..addStatusListener((status) async {
        prettyPrint(status.toString());
        if (status == AnimationStatus.completed) {
          final routeName = await _init();
          context.goNamed(
            routeName,
          );
          Timer(const Duration(milliseconds: 300), () {
            scaleController.reset();
          });
        }
      });

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 10).animate(scaleController);

    Timer(const Duration(milliseconds: 600), () {
      setState(() {
        _opacity = 1.0;
        _value = false;
      });
    });

    Timer(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity2 = 0;
      });
    });

    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        scaleController.forward();
      });
    });
  }

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: const Duration(seconds: 3),
        opacity: _opacity2,
        child: Container(
          color: AppColors.primaryColor,
          child: Stack(
            children: [
              Center(
                child: AnimatedOpacity(
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(seconds: 6),
                  opacity: _opacity,
                  child: AnimatedContainer(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(seconds: 2),
                    height: _value ? 50 : 100,
                    width: _value ? 50 : 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/icons/mash_icon.png'),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.white,
                          blurRadius: 100,
                          spreadRadius: 10,
                        ),
                      ],
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: AnimatedBuilder(
                        animation: scaleAnimation,
                        builder: (c, child) => Transform.scale(
                          scale: scaleAnimation.value,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
