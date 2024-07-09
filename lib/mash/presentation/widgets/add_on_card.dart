

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';

class AddOnCard extends StatelessWidget {
  const AddOnCard({super.key,required this.cardImage,required this.onPress, required this.title});

  final String cardImage;
  final VoidCallback onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0,right: 15,left: 15),
      child: InkWell(
        onTap: onPress,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              clipBehavior: Clip.hardEdge,
              child: CachedNetworkImage(
                imageUrl: cardImage,
                fit: BoxFit.cover,
                height: size.height* 0.22,
                width: size.width,
                placeholder: (BuildContext context, String url) => Container(color: Colors.grey.shade50,),
                errorWidget: (BuildContext context, String url, dynamic error) =>  Image.asset('assets/images/mash_place_holder.jpg'),
              ),
            ),
            Positioned(
              top: 25,
              right: 25,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  boxShadow: [BoxShadow(
                    color: Colors.purple.withOpacity(0.8),
                    blurRadius: 5.0,
                  ),],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.0),
                  child:  Text(
                    AppStrings.addOnExplore,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child:  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.0),
                child:  Text(
                  title ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
