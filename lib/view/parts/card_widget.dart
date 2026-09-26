import 'package:first_flutter_project/data/card_asset.dart';
import 'package:first_flutter_project/view/parts/image_view.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.card});

  final CardAsset card;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black54, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      shadowColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(card.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            Expanded(child: ImageView(images: card.imageAssets)),
            ListTile(
              leading: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${card.name} added to cart'),));
                }, 
                icon: const Icon(Icons.add_shopping_cart), 
                tooltip: 'Add to Cart'
              ),
              title: Text(card.name, style: const TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center), 
              subtitle: Text(card.description), 
              trailing: Text('${card.price} \$', style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}