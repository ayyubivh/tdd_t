import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/dashboard/digital_library_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/search_widget.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/handle_error.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../domain/entities/academic/class_details_entity.dart';
import '../../../widgets/drawer_widget.dart';

class AcademicsScreen extends StatefulWidget {
  const AcademicsScreen({super.key});

  @override
  State<AcademicsScreen> createState() => _AcademicsScreenState();
}

class _AcademicsScreenState extends State<AcademicsScreen> {
  late DigitalLibraryBloc digitalLibraryBloc;

  @override
  void initState() {
    digitalLibraryBloc = DigitalLibraryBloc.get(context);
    digitalLibraryBloc.add(const DigitalLibraryEvent.getClasses());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: commonAppbar(
          title: 'ACADEMICS',
          onClose: () {
            DigitalLibraryBloc.get(context)
              ..add(const DigitalLibraryEvent.getClasses())
              ..add(const DigitalLibraryEvent.closeSearch());
          },
          searchFunction: (str) {
            DigitalLibraryBloc.get(context)
              ..add(DigitalLibraryEvent.searchAcademic(search: str))
              ..add(const DigitalLibraryEvent.startSearch());
          }),
      body: BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
        buildWhen: (previous, current) =>
            previous.isSearching != current.isSearching,
        builder: (context, state) {
          return state.isSearching
              ? const SearchWidget()
              : academicsBody(context);
        },
      ),
    );
  }

  academicsBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [selectClassTitle(), dropDown(), detailList()],
      ),
    );
  }

  selectClassTitle() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 15.0,
        bottom: 5,
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Select Class',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          )),
    );
  }

  dropDown() {
    // List<Widget> buttons = List.generate(classes.length, (index) => buttons(index,classes[index],classes));
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 8.0, top: 8),
        child: BlocConsumer<DigitalLibraryBloc, DigitalLibraryState>(
          listenWhen: (previous, current) =>
              previous.getClasses?.status != current.getClasses?.status,
          listener: (context, state) {
            if (state.getClasses?.status == Status.ERROR) {
              handleErrorUi(context: context, error: state.getClasses?.error);
            }
          },
          buildWhen: (previous, current) =>
              previous.getClasses?.status != current.getClasses?.status,
          builder: (context, state) {
            return state.getClasses?.status == Status.LOADING
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return classChipShimmer();
                    })
                : state.getClasses?.status == Status.COMPLETED
                    ? ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.getClasses?.data?.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return classChips(state.getClasses!.data![index]);
                        })
                    : const SizedBox();
          },
        ),
      ),
    );
  }

  classChips(ClassDetailsEntity entity) {
    // List<Color> buttonColors = List.generate(classes.length, (index) => Colors.blue);
    return BlocBuilder<DigitalLibraryBloc, DigitalLibraryState>(
      buildWhen: (previous, current) =>
          previous.selectedClass != current.selectedClass,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: ElevatedButton(
            onPressed: () {
              var digitalLibraryBloc = DigitalLibraryBloc.get(context);
              digitalLibraryBloc.add(DigitalLibraryEvent.selectClass(entity));
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(width: 1, color: Colors.purple),
              backgroundColor: state.selectedClass == entity
                  ? Colors.purple
                  : Colors.white, // Set button color dynamically
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            child: Text(
              entity.className ?? "",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: state.selectedClass == entity
                      ? Colors.white
                      : Colors.purple),
            ),
          ),
        );
      },
    );
  }

  classChipShimmer() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            " ",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  detailList() {
    return Expanded(
      child: BlocConsumer<DigitalLibraryBloc, DigitalLibraryState>(
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
              ? HelperClasses.shimmerPlacerHolderList()
              : ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return spacer10;
                  },
                  itemCount: state.getLibrary?.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return AcademicCardItem(
                      entity: state.getLibrary!.data![index],
                    );
                  });
        },
      ),
    );
  }
}

class AcademicCardItem extends StatelessWidget {
  final DigitalLibraryEntity entity;
  const AcademicCardItem({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 9,
              offset: const Offset(0, 0),
            )
          ]),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8, top: 20, bottom: 20),
        child: ListTile(
          onTap: () => GoRouter.of(context)
              .pushNamed(AppPages.academicDetailLibraryScreen, extra: entity),
          leading: CachedNetworkImage(
            imageUrl: entity.coverImg ?? "",
            fit: BoxFit.cover,
            height: 50,
            width: 50,
            placeholder: (BuildContext context, String url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (BuildContext context, String url, dynamic error) =>
                const Icon(Icons.error),
          ),
          title: Text(
            entity.contentName ?? "",
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.only(right: 10,left: 10),
    //   // width: size.width,
    //   height: 50,
    //   decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(10),
    //       boxShadow: [
    //         BoxShadow(
    //           color: Colors.grey.withOpacity(0.3),
    //           spreadRadius: 1,
    //           blurRadius: 9,
    //           offset: const Offset(0, 0),
    //         )
    //       ]
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.only(left: 8.0,right: 8,top: 20,bottom: 20),
    //     child: ListTile(
    //       leading: CachedNetworkImage(
    //         imageUrl: "https://png.pngtree.com/png-vector/20190330/ourmid/pngtree-vector-picture-icon-png-image_890152.jpg",
    //         fit: BoxFit.cover,
    //         // height: size.height* 0.22,
    //         // width: size.width,
    //         placeholder: (BuildContext context, String url) => const Center(child: CircularProgressIndicator(),),
    //         errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
    //       ),
    //       title: Text('library books',style: TextStyle(fontWeight: FontWeight.w600),),
    //     ),
    //   ),
    // );
  }
}
