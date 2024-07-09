import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class ViewYearlyPlanListScreen extends StatelessWidget {
  const ViewYearlyPlanListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.viewYearDetails),
      endDrawer: const DrawerWidget(),
      body: viewYearDetails(context),
    );
  }

  viewYearDetails(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: ListView.separated(
          itemCount: 7,
          separatorBuilder: (context, index) {
            return spacer10;
          },
          itemBuilder: (context, index) {
            return cardWidget();
          }),
    );
  }

  cardWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 9,
              offset: const Offset(0, 0),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "INCOMPLETE DYNAMIC",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            rows('Month', 'January'),
            rows('Chapter', 'Colouring and craft - test 17'),
            rows('Term', 'FIRST TERM')
          ],
        ),
      ),
    );
  }

  rows(String item, String itemDetails) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [itemTitle(item), itemDetail(itemDetails)],
      ),
    );
  }

  itemTitle(String item) {
    return Text(
      "$item -",
      style: const TextStyle(fontWeight: FontWeight.w500),
    );
  }

  itemDetail(String itemDetail) {
    return Text(
      "$itemDetail -",
      style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
    );
  }
}
