import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/entities/academic/academic_type_entity.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/helper_classes.dart';

class CategoryTile extends StatelessWidget {
  final Function onTap;
  final AcademicTypeEntity e;
  const CategoryTile({super.key, required this.onTap, required this.e});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(width: 0.5, color: AppColors.primaryColor)),
        child: SizedBox(
          width: 80,
          height: 105,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  imageUrl: e.iconUrl,
                  height: 50,
                  errorWidget: (context, url, error) =>
                      HelperClasses.errorWidget(context),
                ),
              ),
              Flexible(
                child: Text(
                  e.typeName,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
