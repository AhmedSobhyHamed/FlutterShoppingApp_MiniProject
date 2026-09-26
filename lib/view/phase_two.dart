import 'package:first_flutter_project/data/image_asset.dart';
import 'package:first_flutter_project/service/image_service.dart';
import 'package:first_flutter_project/view/parts/card_grid.dart';
import 'package:first_flutter_project/view/parts/card_view.dart';
import 'package:first_flutter_project/view/parts/image_view.dart';
import 'package:flutter/material.dart';

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
        title: const Text('My First Project'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: _height,
        child: Column(
          children: [
            Expanded(child: ImageView(images: products)), 
            const Hero(
              tag: 'hero_dialog_success',
              child: Material(
                type: MaterialType.transparency,
                child: Text(
                  'Our Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            Expanded(child: CardGrid(cards: cards)),
            const Text('Hot Offers', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            Expanded(child: CardView(cards: offers)),
          ],
        ),
      ),
    );
  }
}
