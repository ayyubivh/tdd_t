import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Lottie.asset(AppAssets.comingSoonLottie),
    ));
  }
}
