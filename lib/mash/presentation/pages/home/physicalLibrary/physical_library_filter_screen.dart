

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/widgets/filter_widget.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

class PhysicalLibraryFilterScreen extends StatelessWidget {
  const PhysicalLibraryFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: commonAppbar(title: AppStrings.filter),
      body: const FilterBottomSheet(),
    );
  }
}
