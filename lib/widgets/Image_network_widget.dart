import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:startedpack/commons/color_data.dart';

class MainImageNetworkWidget extends StatelessWidget {
  const MainImageNetworkWidget({
    @required this.imageUrl,
    @required this.height,
    @required this.width,
    @required this.indicatorHeight,
    @required this.indicatorWidth,
    @required this.errorIconSize,
    @required this.borderRadius,
    Key key,
    this.isZoomEnabled = false,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  final String imageUrl;
  final double height, width, indicatorHeight, indicatorWidth, errorIconSize;
  final BorderRadiusGeometry borderRadius;
  final bool isZoomEnabled;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      fit: BoxFit.cover,
      color: ColorData.white,
      imageUrl: imageUrl,
      progressIndicatorBuilder: (context, url, download) => Center(
        child: Container(
          height: indicatorHeight,
          width: indicatorWidth,
          child: CircularProgressIndicator(
            value: download.progress,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        color: ColorData.redEF,
        size: errorIconSize,
      ),
      imageBuilder: (context, image) => PinchZoom(
        zoomedBackgroundColor: ColorData.black.withOpacity(0.5),
        zoomEnabled: isZoomEnabled,
        image: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: ColorData.white,
            image: DecorationImage(
              image: image,
              fit: boxFit,
            ),
          ),
        ),
      ),
    );
  }
}
