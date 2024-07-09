import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/book_list_widget.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/category_tile.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';

import '../../../../manager/bloc/digital_library/digital_library_bloc.dart';

class NonAcademicBody extends StatelessWidget {
  const NonAcademicBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [_filters(), _selectedFilter(), _body()],
    );
  }

  Widget _selectedFilter() {
    return BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              if (state.selectedMedium != null)
                FilterChip(
                  avatar: const Icon(Icons.close),
                  label: Text(state.selectedMedium?.typeName ?? ""),
                  onSelected: (b) {
                    DigitalLibraryBloc.get(context)
                        .add(const DigitalLibraryEvent.selectMedium(null));
                  },
                  backgroundColor: AppColors.primaryColor.withOpacity(0.4),
                  selected: false,
                ),
              if (state.selectedSubCat != null)
                FilterChip(
                  avatar: const Icon(Icons.close),
                  label: Text(state.selectedSubCat?.typeName ?? ""),
                  onSelected: (b) {
                    DigitalLibraryBloc.get(context)
                        .add(const DigitalLibraryEvent.selectMedium(null));
                  },
                  backgroundColor: AppColors.primaryColor.withOpacity(0.4),
                  selected: false,
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _filters() {
    return SizedBox(
      height: 45,
      child: ListView(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        children: NonAcademicTypes.values
            .map((e) => BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
                  buildWhen: (previous, current) =>
                      previous.selectedNonAcademic !=
                      current.selectedNonAcademic,
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(
                        onPressed: () {
                          var digitalLibraryBloc =
                              DigitalLibraryBloc.get(context);
                          digitalLibraryBloc.add(
                              DigitalLibraryEvent.selectNonAcademicType(e));
                        },
                        style: ElevatedButton.styleFrom(
                          side:
                              const BorderSide(width: 1, color: Colors.purple),
                          backgroundColor: state.selectedNonAcademic == e
                              ? Colors.purple
                              : Colors.white, // Set button color dynamically
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        child: Text(
                          e.name.toUpperCase().replaceAll("_", "-"),
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: state.selectedNonAcademic == e
                                  ? Colors.white
                                  : Colors.purple),
                        ),
                      ),
                    );
                  },
                ))
            .toList(),
      ),
    );
  }

  Widget _buildCategory() {
    return Column(
      children: [_buildSubCats(), _buildMediums()],
    );
  }

  Widget _buildSubCats() {
    return BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
      buildWhen: (previous, current) =>
          previous.subCats?.status != current.subCats?.status,
      builder: (context, state) {
        return state.subCats?.status == Status.LOADING
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.subCats?.status == Status.ERROR
                ? Center(
                    child: Text(state.subCats?.error),
                  )
                : Column(
                    children: [
                      spacer10,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Search by sub category ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                                onPressed: () {
                                  GoRouter.of(context).pushNamed(
                                      AppPages.seeAllSubMedium,
                                      extra:
                                          SeeAllNonAcademicTypes.subCategory);
                                },
                                child: const Text("See All"))
                          ],
                        ),
                      ),
                      spacer10,
                      Wrap(
                          children: state.subCats?.data
                                  ?.take(10)
                                  .map((e) => CategoryTile(
                                      onTap: () {
                                        DigitalLibraryBloc.get(context).add(
                                            DigitalLibraryEvent.selectSubCat(
                                                e));
                                      },
                                      e: e))
                                  .toList() ??
                              [])
                    ],
                  );
      },
    );
  }

  Widget _buildMediums() {
    return BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
      buildWhen: (previous, current) =>
          previous.mediums?.status != current.mediums?.status,
      builder: (context, state) {
        return state.mediums?.status == Status.LOADING
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.mediums?.status == Status.ERROR
                ? Center(
                    child: Text(state.mediums?.error),
                  )
                : Column(
                    children: [
                      spacer10,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Search by medium ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                                onPressed: () {
                                  GoRouter.of(context).pushNamed(
                                      AppPages.seeAllSubMedium,
                                      extra: SeeAllNonAcademicTypes.medium);
                                },
                                child: const Text("See All"))
                          ],
                        ),
                      ),
                      spacer10,
                      Wrap(
                          children: state.mediums?.data
                                  ?.take(10)
                                  .map((e) => CategoryTile(
                                      onTap: () {
                                        DigitalLibraryBloc.get(context).add(
                                            DigitalLibraryEvent.selectMedium(
                                                e));
                                      },
                                      e: e))
                                  .toList() ??
                              [])
                    ],
                  );
      },
    );
  }

  Widget _body() {
    return BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
      buildWhen: (previous, current) =>
          (previous.getLibrary?.status != current.getLibrary?.status) ||
          (previous.selectedNonAcademic != current.selectedNonAcademic) ||
          (previous.selectedMedium != current.selectedMedium) ||
          (previous.selectedSubCat != current.selectedSubCat),
      builder: (BuildContext context, state) {
        return state.selectedNonAcademic != NonAcademicTypes.all &&
                (state.selectedMedium == null && state.selectedSubCat == null)
            ? _buildCategory()
            : state.getLibrary?.status == Status.LOADING
                ? HelperClasses.shimmerPlacerHolderGrid()
                : state.getLibrary?.status == Status.COMPLETED
                    ? state.getLibrary?.data?.isNotEmpty == true
                        ? GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.getLibrary?.data?.length,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => BookListWidget(
                              entity: state.getLibrary!.data![index],
                              onTap: () {
                                GoRouter.of(context).pushNamed(
                                    AppPages.bookDetailDigital,
                                    extra: state.getLibrary!.data![index]);
                              },
                            ),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 9 / 12,
                            ),
                          )
                        : SizedBox(
                            height: MediaQuery.of(context).size.height -
                                SizeConfig.height(200),
                            child:
                                Center(child: HelperClasses.emptyDataWidget()))
                    : const SizedBox();
      },
    );
  }
}
