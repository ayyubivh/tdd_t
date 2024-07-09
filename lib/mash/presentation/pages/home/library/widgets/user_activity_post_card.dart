import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/image_view_widget.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String name;
  final String postedTime;
  final String postImage;
  final String description;

  const PostCard({
    super.key,
    required this.profileImage,
    required this.name,
    required this.postedTime,
    required this.postImage,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(profileImage),
            ),
            title: Text(
              name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            subtitle: Row(
              children: [
                Text(postedTime),
                spacerWidth6,
                const Icon(
                  Icons.language,
                  size: 13,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FullScreenImagePage(
                      imageUrl: postImage,
                    ))),
            /*child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200, imageUrl: postImage,
            ),*/
            child: FutureBuilder(
              future: getImageSize(postImage),
              builder: (BuildContext context, AsyncSnapshot<Size> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                    height: 200, // Placeholder height while waiting for size
                    color: Colors.grey,
                  );
                } else if (snapshot.hasError) {
                  return const Text('Error loading image');
                } else {
                  Size imageSize = snapshot.data!;
                  double aspectRatio = imageSize.width / imageSize.height;
                  return AspectRatio(
                    aspectRatio: aspectRatio,
                    child: CachedNetworkImage(
                      imageUrl: postImage,
                      fit: BoxFit.cover,
                    ),
                  );
                }
              },
            ),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
          spacer10
        ],
      ),
    );
  }
}

Future<Size> getImageSize(String url) async {
  Completer<Size> completer = Completer();
  Image image = Image.network(url);
  image.image.resolve(const ImageConfiguration()).addListener(
    ImageStreamListener((ImageInfo info, bool _) {
      completer.complete(Size(
        info.image.width.toDouble(),
        info.image.height.toDouble(),
      ));
    }),
  );
  return completer.future;
}
