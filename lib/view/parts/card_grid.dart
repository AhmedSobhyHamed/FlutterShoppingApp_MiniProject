import 'package:first_flutter_project/data/card_asset.dart';
import 'package:first_flutter_project/view/parts/card_widget.dart';
import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  const CardGrid({super.key, required this.cards});

  final List<CardAsset> cards;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return CardWidget(card: cards[index]);
      },
    );
  }
}