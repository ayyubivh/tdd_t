import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/drawer_widget.dart';

class MashSupportScreen extends StatelessWidget {
  const MashSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.mashSupport),
      endDrawer: const DrawerWidget(),
      body: supportBody(context),
    );
  }

  supportBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Lottie.asset(
            AppAssets.supportLottie,
            height: SizeConfig.height(330),
          ),
          contactUs(),
          spacer10,
          card(() => _launchCaller("+91-9567864991"), 'PHONE NUMBER',
              "+91-9567864991", Icons.call),
          card(() => _sendEmail("techsupportmageet@mash-edu.com"), 'EMAIL',
              "techsupportmageet@mash-edu.com", Icons.alternate_email),
          spacer20,
          mageethLogo()
        ],
      ),
    );
  }

  contactUs() {
    return Text(
      AppStrings.contactUs,
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.grey700),
    );
  }

  listTileTitle(title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.grey600),
    );
  }

  listTileSubTitle(subTitle) {
    return Text(
      subTitle,
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.grey600),
    );
  }

  _launchCaller(number) async {
    var url = "tel:$number";
    if (!await launchUrl(Uri.parse(url))) {
    } else {
      throw 'Could not launch $url';
    }
  }

  void _sendEmail(email) {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {'subject': 'Support Enquiry', 'body': ''},
    );
    launchUrl(emailLaunchUri);
  }

  card(onTap, title, subTitle, icon) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Card(
              elevation: 2,
              surfaceTintColor: AppColors.primaryColor,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: Icon(
                      icon,
                      size: 50,
                      color: AppColors.primaryColor,
                    ),
                    title: listTileTitle(title),
                    subtitle: listTileSubTitle(subTitle),
                  ))),
        ));
  }

  mageethLogo() {
    return Image.asset(AppAssets.mageethSchoolLogo);
  }
}
