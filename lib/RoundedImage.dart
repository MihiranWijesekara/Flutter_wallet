import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imageUrl;
  final bool isAssetImage;
  final double radius;

  const RoundedImage({
    Key? key,
    required this.imageUrl,
    this.isAssetImage = false,
    this.radius = 45.0, // Default radius value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize = radius * 1.35;

    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(radius),
      ),
      width: imageSize,
      height: imageSize,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: isAssetImage
            ? Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: imageSize,
                height: imageSize,
              )
            : Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: imageSize,
                height: imageSize,
              ),
              
      ),
    );
  }
}
