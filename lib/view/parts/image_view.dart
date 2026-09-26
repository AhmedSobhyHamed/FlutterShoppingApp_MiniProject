import 'package:first_flutter_project/data/image_asset.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.images});

  final List<ImageAsset> images;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        final image = images[index];
        return Padding(
          padding: const EdgeInsets.all(16),
          child: switch (image.type) {
          ImageType.local => Image.asset(image.path, fit: BoxFit.contain),
          ImageType.remote => Image.network(image.path, fit: BoxFit.contain),
        },
        );
      },
    );
  }
}
