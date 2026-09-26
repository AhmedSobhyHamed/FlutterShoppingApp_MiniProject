import 'package:first_flutter_project/l10n/app_locale.dart';
import 'package:first_flutter_project/service/image_service.dart';
import 'package:first_flutter_project/view/phase_form.dart';
import 'package:first_flutter_project/view/parts/caption_box.dart';
import 'package:first_flutter_project/view/parts/image_grid.dart';
import 'package:first_flutter_project/view/parts/language_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class PhaseOne extends StatelessWidget {
  const PhaseOne({super.key});

  @override
  Widget build(BuildContext context) {
    final images = const ImageService().getImages();

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.myFirstProject.getString(context)),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          const LanguageMenu(),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (context) => const PhaseForm()),
              );
            },
            icon: const Hero(
              tag: 'hero_dialog_failure',
              child: Material(
                type: MaterialType.transparency,
                child: Icon(Icons.person_add),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ImageGrid(images: images),
          ),
          CaptionBox(text: AppLocale.twoImagesDisplayed.getString(context)),
        ],
      ),
    );
  }
}
