import 'package:first_flutter_project/data/card_asset.dart';
import 'package:first_flutter_project/view/parts/card_widget.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.cards});

  final List<CardAsset> cards;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return SizedBox (
          height: 300,
          child: CardWidget(card: cards[index]),
        );  
      },
    );
  }
}