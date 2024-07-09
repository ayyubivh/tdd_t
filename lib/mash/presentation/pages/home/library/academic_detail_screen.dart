import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../domain/entities/dashboard/digital_library_entity.dart';
import '../../../widgets/drawer_widget.dart';

class AcademicDetailScreen extends StatelessWidget {
  final DigitalLibraryEntity entity;

  const AcademicDetailScreen({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    DigitalLibraryBloc.get(context)
        .add(const DigitalLibraryEvent.getTypes("DL_TYPE", "1"));
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: commonAppbar(title: entity.contentName ?? ""),
      body: academicDetailBody(),
    );
  }

  academicDetailBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: BlocConsumer<DigitalLibraryBloc, DigitalLibraryState>(
        buildWhen: (previous, current) =>
            previous.getTypes?.status != current.getTypes?.status,
        builder: (context, state) {
          return state.getTypes?.status == Status.LOADING
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: state.getTypes?.data?.length ?? 0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return detailCard(state.getTypes!.data![index], context);
                  });
        },
        listener: (BuildContext context, DigitalLibraryState state) {
          if (state.getTypes?.status == Status.ERROR) {
            handleErrorUi(context: context, error: state.getTypes?.error);
          }
        },
        listenWhen: (previous, current) =>
            previous.getTypes?.status != current.getTypes?.status,
      ),
    );
  }

  detailCard(AcademicTypeEntity entity, BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .pushNamed(AppPages.academicBooksList, extra: entity);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  imageUrl: entity.iconUrl,
                  fit: BoxFit.fill,
                  // height: 50,
                  // width: 50,
                  placeholder: (BuildContext context, String url) =>
                      const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget:
                      (BuildContext context, String url, dynamic error) =>
                          const Icon(Icons.error),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(entity.typeName),
              ),
            )
          ],
        ),
      ),
    );
  }
}
