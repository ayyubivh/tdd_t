import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/suggestionBox/suggestion_box_item_model.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../widgets/drawer_widget.dart';

class SuggestionMainScreen extends StatelessWidget {
  const SuggestionMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'SUGGESTION BOX'),
      endDrawer: const DrawerWidget(),
      body: suggestionBody(context),
    );
  }

  suggestionBody(BuildContext context) {
    List<SuggestionItemModel> items = [
      SuggestionItemModel(
          title: 'SUGGESTION/COMPLAINTS',
          asset: AppAssets.suggestionImage,
          onTap: () {
            GoRouter.of(context).pushNamed(AppPages.suggestionScreen);
          }),
      SuggestionItemModel(
          title: 'RESPONSE',
          asset: AppAssets.responseImage,
          onTap: () {
            // GoRouter.of(context).pushNamed(AppPages.academicLibraryScreen);
          }),
    ];
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              // return libraryCard(()=> GoRouter.of(context).pushNamed(routes[0]),titleList[index],list[index]);
              return suggestionCard(items[index], context);
            }),
      ),
    );
  }

  suggestionCard(SuggestionItemModel data, BuildContext context) {
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
