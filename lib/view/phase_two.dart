import 'package:first_flutter_project/l10n/app_locale.dart';
import 'package:first_flutter_project/service/image_service.dart';
import 'package:first_flutter_project/view/parts/card_grid.dart';
import 'package:first_flutter_project/view/parts/card_view.dart';
import 'package:first_flutter_project/view/parts/image_view.dart';
import 'package:first_flutter_project/view/parts/language_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class PhaseTwo extends StatelessWidget {
  const PhaseTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final products = const ImageService().getProductImages();
    final cards = const ImageService().getProductCards();
    final offers = const ImageService().getOfferCards();

    double _height = MediaQuery.of(context).size.height * 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.myFirstProject.getString(context)),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: const [
          LanguageMenu(),
        ],
      ),
      body: Container(
        height: _height,
        child: Column(
          children: [
            Expanded(child: ImageView(images: products)), 
            Hero(
              tag: 'hero_dialog_success',
              child: Material(
                type: MaterialType.transparency,
                child: Text(
                  AppLocale.ourProducts.getString(context),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            Expanded(child: CardGrid(cards: cards)),
            Text(
              AppLocale.hotOffers.getString(context),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            Expanded(child: CardView(cards: offers)),
          ],
        ),
      ),
    );
  }
}
