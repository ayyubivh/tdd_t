import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/category_tile.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../utils/enums.dart';

class SeeAllSubAndMedium extends StatelessWidget {
  final SeeAllNonAcademicTypes type;

  const SeeAllSubAndMedium({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    var digitalLibraryBloc = DigitalLibraryBloc.get(context);
    return Scaffold(
      appBar: commonAppbar(title: type.toName()),
      body: BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
        builder: (context, state) {
          return ListView(
            children: type == SeeAllNonAcademicTypes.subCategory
                ? state.subCats?.data
                        ?.map((e) => CategoryTile(
                            onTap: () {
                              digitalLibraryBloc
                                  .add(DigitalLibraryEvent.selectSubCat(e));
                            },
                            e: e))
                        .toList() ??
                    []
                : state.mediums?.data
                        ?.map((e) => CategoryTile(
                            onTap: () {
                              digitalLibraryBloc
                                  .add(DigitalLibraryEvent.selectMedium(e));
                            },
                            e: e))
                        .toList() ??
                    [],
          );
        },
      ),
    );
  }
}
