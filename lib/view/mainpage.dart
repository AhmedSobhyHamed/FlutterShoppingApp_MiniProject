import 'package:first_flutter_project/service/image_service.dart';
import 'package:first_flutter_project/view/caption_box.dart';
import 'package:first_flutter_project/view/image_grid.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final images = const ImageService().getImages();

    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Project'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ImageGrid(images: images),
          ),
          const CaptionBox(text: 'The two images are displayed'),
        ],
      ),
    );
  }
}
