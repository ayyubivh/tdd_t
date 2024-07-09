import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';

import '../../../../../../core/response_classify.dart';
import '../../../../router/app_pages.dart';
import '../../../../utils/helper_classes.dart';
import '../../../../utils/size_config.dart';
import 'book_list_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
        builder: (context, state) => state.getLibrary?.status == Status.LOADING
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
                        child: Center(child: HelperClasses.emptyDataWidget()))
                : const SizedBox());
  }
}
