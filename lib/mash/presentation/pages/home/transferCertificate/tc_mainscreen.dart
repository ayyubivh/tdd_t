import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/home_work_item_data.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class TransferCertificateMainScreen extends StatelessWidget {
  const TransferCertificateMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: commonAppbar(title: 'TRANSFER CERTIFICATE'),
      body: homeWorkBody(context),
    );
  }

  homeWorkBody(BuildContext context) {
    List<HomeWorkItemModel> items = [
      HomeWorkItemModel(
          title: 'APPLY TC',
          asset: AppAssets.tcApply,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.tcRequestScreen);
          }),
      HomeWorkItemModel(
          title: 'CANCEL TC',
          asset: AppAssets.tcCancel,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.tcCancelScreen);
          }),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return tcCard(items[index], context);
          }),
    );
  }

  tcCard(HomeWorkItemModel data, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => data.onTap(),
          child: Container(
            height: SizeUtility(context).height / 4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(data.asset),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(data.title)),
                )
              ],
            ),
          )),
    );
  }
}
