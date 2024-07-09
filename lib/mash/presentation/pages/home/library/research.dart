import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

import '../../../../domain/entities/dashboard/digital_library_entity.dart';
import '../../../utils/app_colors.dart';

void main() {
  // runApp(MaterialApp(
  //   home: BlocProvider(
  //     // create: (context) => DigitalLibraryBloc()..add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(pCompId: '', pUserId: '', pModuleName: ''))),
  //   ),
  // ))
}

class ResearchScreen extends StatefulWidget {
  const ResearchScreen({super.key});

  @override
  State<ResearchScreen> createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  @override
  void initState() {
    DigitalLibraryBloc.get(context)
        .add(const DigitalLibraryEvent.getResearch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppbar(title: "Research"),
        body: BlocConsumer<DigitalLibraryBloc, DigitalLibraryState>(
          listenWhen: (previous, current) =>
              previous.getLibrary?.status != current.getLibrary?.status,
          listener: (context, state) {
            if (state.getLibrary?.status == Status.ERROR) {
              handleErrorUi(context: context, error: state.getLibrary?.error);
            }
          },
          buildWhen: (previous, current) =>
              previous.getLibrary?.status != current.getLibrary?.status,
          builder: (context, state) {
            return state.getLibrary?.status == Status.LOADING
                ? HelperClasses.shimmerPlacerHolderGrid()
                : state.getLibrary?.status == Status.COMPLETED
                    ? state.getLibrary?.data?.isEmpty == true
                        ? HelperClasses.emptyDataWidget()
                        : GridView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            itemCount: state.getLibrary?.data?.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20,
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return ResearchTile(
                                entity: state.getLibrary!.data![index],
                              );
                            },
                          )
                    : const SizedBox();
          },
        ));
  }
}

class ResearchTile extends StatelessWidget {
  final DigitalLibraryEntity entity;

  const ResearchTile({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(AppPages.webview, pathParameters: {
          'url': entity.urlLink ?? "",
          'title': entity.researchName ?? ""
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 9,
                offset: const Offset(0, 0),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: entity.docImg ?? "",
              width: 80,
              height: 80,
            ),
            spacer10,
            Text(
              entity.researchName ?? "",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
