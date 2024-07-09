

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/widgets/book_custom_dialog_box.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/buttons/default_button.dart';

class BookDetailCard extends StatelessWidget {
  final PhysicalLibraryEntity entity;
  const BookDetailCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 10,
      shadowColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.purpleLight
        ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: CachedNetworkImage(
                    imageUrl:entity.coverImg,
                    fit: BoxFit.fill,
                    // height: 50,
                    // width: 50,
                    placeholder: (BuildContext context, String url) => const Center(child: CircularProgressIndicator(),),
                    errorWidget: (BuildContext context, String url, dynamic error) => const Icon(Icons.error),
                  ),
                ),
              ),
            ),
             Expanded(
              flex: 1,
              child: Center(
                child: Text(entity.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
              ),
            ),Expanded(
              flex: 1,
              child: Center(
                child: Text(entity.authorName,style:  TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: AppColors.grey700),),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: DefaultButton(onTap: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return  CustomDialog(entity: entity,);
                    },
                  );
                }, title: AppStrings.viewCapital),
              ),
            ),
            spacer7
          ],
        ),
      ),
    );
  }
}
