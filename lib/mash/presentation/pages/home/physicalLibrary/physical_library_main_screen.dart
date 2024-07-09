import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/library_bloc/library_bloc.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/widgets/books_detail_card.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../widgets/drawer_widget.dart';

class PhysicalLibraryMainScreen extends StatefulWidget {
  const PhysicalLibraryMainScreen({super.key});

  @override
  State<PhysicalLibraryMainScreen> createState() =>
      _PhysicalLibraryMainScreenState();
}

class _PhysicalLibraryMainScreenState extends State<PhysicalLibraryMainScreen> {
  @override
  void initState() {
    super.initState();
    LibraryBloc.get(context).add(const LibraryEvent.getPhysicalLibrary(
        prmLangId: '-1', prmAuthId: '-1', prmSearch: "-1"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.physicalLibrary),
      endDrawer: const DrawerWidget(),
      body: const PhysicalLibraryBody(),
    );
  }
}

class PhysicalLibraryBody extends StatelessWidget {
  const PhysicalLibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: SizeConfig.height(100),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: AppColors.greyClr100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 5.0,
                ),
              ],
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Center(
                            child: CommonTextField(
                              controller: _searchController,
                              onChange: (value) {
                                value!.isEmpty
                                    ? HelperClasses.showSnackBar(
                                        msg: AppStrings.searchWarning)
                                    : LibraryBloc.get(context).add(
                                        LibraryEvent.getPhysicalLibrary(
                                            prmLangId: '-1',
                                            prmAuthId: '-1',
                                            prmSearch: value ?? '-1'));
                              },
                              // prefix: const Icon(Icons.search),
                              title: 'Search Book Here..',
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                            backgroundColor: AppColors.purpleLight,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          _searchController.text.isEmpty
                              ? HelperClasses.showSnackBar(
                                  msg: AppStrings.searchWarning)
                              : LibraryBloc.get(context).add(
                                  LibraryEvent.getPhysicalLibrary(
                                      prmLangId: '-1',
                                      prmAuthId: '-1',
                                      prmSearch:
                                          _searchController.text ?? '-1'));
                        },
                        icon: const Icon(Icons.search_outlined),
                      ),
                      // spacerWidth6
                    ],
                  ),
                ),
                Divider(
                  height: 5,
                  color: AppColors.white,
                ),
                Expanded(
                  child: Expanded(
                    child: InkWell(
                      onTap: () => GoRouter.of(context)
                          .pushNamed(AppPages.physicalLibraryFilter),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            color: AppColors.primaryColor),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.filter_alt_sharp,
                                size: 15,
                                color: AppColors.white,
                              ),
                              spacerWidth4,
                              Text(
                                AppStrings.filterSmall,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: BlocConsumer<LibraryBloc, LibraryState>(
              listenWhen: (previous, current) =>
                  previous.postPhysicalLibraryRequest?.status !=
                  current.postPhysicalLibraryRequest?.status,
              listener: (context, state) {
                if (state.postPhysicalLibraryRequest?.status ==
                    Status.COMPLETED) {
                  HelperClasses.showSnackBar(
                      msg: state.postPhysicalLibraryRequest?.data ?? "");
                }
              },
              builder: (context, state) {
                return state.getPhysicalLibrary?.status == Status.LOADING ||
                        state.getPhysicalLibrary?.data == null
                    ? const Loader()
                    : GridView.builder(
                        itemCount: state.getPhysicalLibrary?.data?.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return state.getPhysicalLibrary!.data!.isEmpty
                              ? HelperClasses.emptyDataWidget()
                              : BookDetailCard(
                                  entity:
                                      state.getPhysicalLibrary!.data![index],
                                );
                        });
              },
            ),
          )
        ],
      ),
    );
  }
}
