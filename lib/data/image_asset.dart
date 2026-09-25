enum ImageType { local, remote }

class ImageAsset {
  const ImageAsset({required this.path, required this.type});

  final String path;
  final ImageType type;
}
