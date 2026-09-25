import 'package:first_flutter_project/data/image_asset.dart';

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
}
