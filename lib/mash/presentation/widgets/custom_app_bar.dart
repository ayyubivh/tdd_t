import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';

PreferredSize customAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 60),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: AppBar(
        leading: assetFromSvg(
          AppAssets.mashLoginLogo,
        ),
        actions: [
          assetFromSvg(AppAssets.notificationIcon),
          spacer20,
          const Icon(Icons.menu),
        ],
      ),
    ),
  );
}
