import 'package:first_flutter_project/data/image_asset.dart';
import 'package:first_flutter_project/data/card_asset.dart';

class ImageService {
  const ImageService();

  List<ImageAsset> getImages() {
    return const [
      ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local),
      ImageAsset(
        path: 'https://picsum.photos/400/300',
        type: ImageType.remote,
      ),
    ];
  }

  List<ImageAsset> getProductImages() {
    return const [
      ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local),
      ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local),
      ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local),
      ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local),
    ];
  }

  List<CardAsset> getProductCards() {
    return const [
      CardAsset(name: 'Product 1', description: 'Description 1', price: 100, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: 'Product 2', description: 'Description 2', price: 200, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: 'Product 3', description: 'Description 3', price: 300, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: 'Product 4', description: 'Description 4', price: 400, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
    ];
  }
  List<CardAsset> getOfferCards() {
    return const [
      CardAsset(name: 'Offer 1', description: 'Description 1', price: 100, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: 'Offer 2', description: 'Description 2', price: 200, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: 'Offer 3', description: 'Description 3', price: 300, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: 'Offer 4', description: 'Description 4', price: 400, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: 'Offer 5', description: 'Description 5', price: 500, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
    ];
  }
}
