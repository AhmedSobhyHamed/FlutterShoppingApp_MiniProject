import 'package:first_flutter_project/data/image_asset.dart';

class CardAsset {
  const CardAsset({required this.name, required this.description, required this.price, required this.imageAssets});

  final String name;
  final String description;
  final double price;
  final List<ImageAsset> imageAssets;

  factory CardAsset.fromJson(Map<String, dynamic> json) {
    return CardAsset(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageAssets: json['imageAssets'].map((imageAsset) => ImageAsset.fromJson(imageAsset)).toList(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'imageAssets': imageAssets.map((imageAsset) => imageAsset.toJson()).toList(),
    };
  }
}
