import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

import 'custom_shimmer_widget.dart';

class ShimmerHome extends StatelessWidget {
  const ShimmerHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen height

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        spacer20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomShimmerWidget(
              height: 7,
              borderRadius: 4,
              width: SizeUtility(context).width / 6,
            ),
            CustomShimmerWidget(
              height: 7,
              borderRadius: 4,
              width: SizeUtility(context).width / 6,
            ),
          ],
        ),
        spacer10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomShimmerWidget(
              height: 10,
              width: SizeUtility(context).width / 3,
              borderRadius: 4,
            ),
            CustomShimmerWidget(
              height: 10,
              width: SizeUtility(context).width / 3,
              borderRadius: 4,
            ),
          ],
        ),
        spacer10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CustomShimmerWidget(
                  height: 25,
                  width: 25,
                  borderRadius: 8,
                ),
                CustomShimmerWidget(
                  height: 25,
                  width: 25,
                  borderRadius: 8,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomShimmerWidget(
                  height: 7,
                  width: SizeUtility(context).width / 5,
                  borderRadius: 8,
                ),
                CustomShimmerWidget(
                  height: 7,
                  width: SizeUtility(context).width / 9,
                  borderRadius: 8,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
