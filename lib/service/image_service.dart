import 'package:first_flutter_project/data/card_asset.dart';
import 'package:first_flutter_project/data/image_asset.dart';
import 'package:first_flutter_project/l10n/app_locale.dart';

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
      CardAsset(name: AppLocale.product1, description: AppLocale.description1, price: 100, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: AppLocale.product2, description: AppLocale.description2, price: 200, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: AppLocale.product3, description: AppLocale.description3, price: 300, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: AppLocale.product4, description: AppLocale.description4, price: 400, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
    ];
  }
  List<CardAsset> getOfferCards() {
    return const [
      CardAsset(name: AppLocale.offer1, description: AppLocale.description1, price: 100, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: AppLocale.offer2, description: AppLocale.description2, price: 200, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: AppLocale.offer3, description: AppLocale.description3, price: 300, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: AppLocale.offer4, description: AppLocale.description4, price: 400, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
      CardAsset(name: AppLocale.offer5, description: AppLocale.description5, price: 500, imageAssets: [ImageAsset(path: 'assets/images/images.jpg', type: ImageType.local)]),
    ];
  }
}
