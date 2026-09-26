import 'package:first_flutter_project/data/image_asset.dart';
import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({super.key, required this.images});

  final List<ImageAsset> images;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        final image = images[index];
        return switch (image.type) {
          ImageType.local => Image.asset(image.path, fit: BoxFit.cover),
          ImageType.remote => Image.network(image.path, fit: BoxFit.cover),
        };
      },
    );
  }
}
