

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';

class AddOnDetailCard extends StatelessWidget {
  const AddOnDetailCard({super.key,required this.cardImage,required this.onPress,required this.title,required this.description});

  final String cardImage;
  final VoidCallback onPress;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: onPress,
        child: AnimatedContainer(
          duration: const Duration(microseconds: 300),
          curve: Curves.easeIn,
          // height: size.height * 0.21,
          width: size.width,
          decoration: BoxDecoration(
            boxShadow:  const [BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: cardImage,
                        fit: BoxFit.cover,
                        height: size.height* 0.22,
                        width: size.width,
                        placeholder: (BuildContext context, String url) => Container(color: Colors.grey.shade50,),
                        errorWidget: (BuildContext context, String url, dynamic error) =>  Image.asset('assets/images/mash_place_holder.jpg'),
                      ),
                    )),
                 Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(title),
                          subtitle: const Text('Info'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _DescriptionWidget(description),
                        ),
                      ],
                    ))],
            ),
          ),
        )
      ),
    );
  }
}


class _DescriptionWidget extends StatefulWidget {
  final String description;

  const _DescriptionWidget(this.description);

  @override
  __DescriptionWidgetState createState() => __DescriptionWidgetState();
}

class __DescriptionWidgetState extends State<_DescriptionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.description,
          maxLines: _isExpanded ? null : 2,
          // overflow: TextOverflow.ellipsis,
        ),
        if (widget.description.length > 50)
          TextButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              _isExpanded ? 'Show Less' : 'Show More',
              style: const TextStyle(color: Colors.blue),
            ),
          ),
      ],
    );
  }
}
