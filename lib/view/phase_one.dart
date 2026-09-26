import 'package:first_flutter_project/service/image_service.dart';
import 'package:first_flutter_project/view/phase_form.dart';
import 'package:first_flutter_project/view/parts/caption_box.dart';
import 'package:first_flutter_project/view/parts/image_grid.dart';
import 'package:flutter/material.dart';

class PhaseOne extends StatelessWidget {
  const PhaseOne({super.key});

  @override
  Widget build(BuildContext context) {
    final images = const ImageService().getImages();

    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Project'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          Hero(tag: 'hero_dialog_failure', child: IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhaseForm()));
          }, icon: Icon(Icons.person_add))),
        ],
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
