import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/library/library_item_model.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: commonAppbar(title: 'LIBRARY'),
      body: libraryBody(context),
    );
  }

  libraryBody(BuildContext context) {
    List<LibraryItemModel> items = [
      LibraryItemModel(
          title: 'ACADEMIC',
          asset: AppAssets.libImageAcademic,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.academicLibraryScreen);
          }),
      LibraryItemModel(
          title: 'NON\nACADEMIC',
          asset: AppAssets.libImageNonAcademic,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.nonAcademic);
          }),
      LibraryItemModel(
          title: 'RESEARCH',
          asset: AppAssets.libImageResearch,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.research);
          }),
      LibraryItemModel(
          title: 'USER\nACTIVITY',
          asset: AppAssets.libImageUserActivity,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.userActivity);
          }),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return libraryCard(items[index], context);
          }),
    );
  }

  libraryCard(LibraryItemModel data, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: () => data.onTap(),
          child: Container(
            height: SizeUtility(context).height / 4.5,
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
