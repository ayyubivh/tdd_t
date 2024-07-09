import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';
import 'package:mash/mash/presentation/manager/bloc/library_bloc/library_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';

import '../../../../utils/app_strings.dart';

class CustomDialog extends StatefulWidget {
  final PhysicalLibraryEntity entity;

  const CustomDialog({super.key, required this.entity});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {


  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.entity.authorName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Card(
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: CachedNetworkImage(
                    imageUrl: widget.entity.coverImg,
                    fit: BoxFit.cover,
                    // height: 200,
                    // width: 80,
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
            ),
            spacer20,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Language')),
                const Text(' : '),
                Expanded(child: Text(widget.entity.lang)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Book Status')),
                const Text(' : '),
                Expanded(
                    child: Text(
                  widget.entity.status == "0" ? 'Not Available' : 'Available',
                  style: TextStyle(
                      color: widget.entity.status == "0"
                          ? AppColors.redColor
                          : AppColors.darkGreen),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Volume')),
                const Text(' : '),
                Expanded(child: Text(widget.entity.volume)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Published Year')),
                const Text(' : '),
                Expanded(child: Text(widget.entity.publishedDate)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(child: Text('Description')),
                const Text(' : '),
                Expanded(child: Text(widget.entity.bookDescription)),
              ],
            ),
            spacer20,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: BlocBuilder<LibraryBloc, LibraryState>(
                builder: (context, state) {
                  return widget.entity.reqStatus == '0' ? AnimatedSharedButton(
                      onTap: () {
                        LibraryBloc.get(context).add(LibraryEvent.postBookRequest(
                            bookId: widget.entity.bookDtlsId));
                      },
                      title: Text(
                       AppStrings.request,
                        style: TextStyle(fontSize: 16, color: AppColors.white),
                      ),
                      isLoading: state.postPhysicalLibraryRequest?.status ==
                          Status.LOADING):  Center(child: Text('Book Request Already Submitted !',style: TextStyle(fontSize: 16,color: AppColors.primaryColor),));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
