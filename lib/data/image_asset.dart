enum ImageType { local, remote }

class ImageAsset {
  const ImageAsset({required this.path, required this.type});

  final String path;
  final ImageType type;

  factory ImageAsset.fromJson(Map<String, dynamic> json) {
    return ImageAsset(
      path: json['path'],
      type: json['type'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'type': type,
    };
  }
}
