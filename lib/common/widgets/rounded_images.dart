import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width = 320,
    this.height = 350,
    required this.imageUrl,
    this.applyImageRaduis = true,
    this.border,
    this.backgroundBorder = TColors.light,
    this.fit = BoxFit.cover,
    this.padding,
    this.isNetworkImage = false,
    this.borderRaduis = TSizes.md,
    this.onPressed,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRaduis;
  final BoxBorder? border;
  final Color backgroundBorder;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final double borderRaduis;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          border: border, borderRadius: BorderRadius.circular(borderRaduis)),
      child: ClipRRect(
          borderRadius: applyImageRaduis
              ? BorderRadius.circular(borderRaduis)
              : BorderRadius.only(),
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          )),
    );
  }
}
