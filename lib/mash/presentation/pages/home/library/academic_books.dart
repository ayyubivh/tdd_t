import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/book_list_widget.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../../core/response_classify.dart';
import '../../../manager/bloc/digital_library/digital_library_bloc.dart';
import '../../../router/app_pages.dart';
import '../../../utils/helper_classes.dart';
import '../../../utils/size_config.dart';

class AcademicBooks extends StatefulWidget {
  final AcademicTypeEntity type;
  const AcademicBooks({super.key, required this.type});

  @override
  State<AcademicBooks> createState() => _AcademicBooksState();
}

class _AcademicBooksState extends State<AcademicBooks> {
  @override
  void initState() {
    DigitalLibraryBloc.get(context).add(
        DigitalLibraryEvent.getAcademicLibrary(typeId: widget.type.typeId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: widget.type.typeName),
      body: _body(),
    );
  }

  Widget _body() {
    return BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
      buildWhen: (previous, current) =>
          (previous.getLibrary?.status != current.getLibrary?.status),
      builder: (BuildContext context, state) {
        return state.getLibrary?.status == Status.LOADING
            ? HelperClasses.shimmerPlacerHolderGrid()
            : state.getLibrary?.status == Status.COMPLETED
                ? state.getLibrary?.data?.isNotEmpty == true
                    ? GridView.builder(
                        physics: const BouncingScrollPhysics(),
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
                : const SizedBox();
      },
    );
  }
}
