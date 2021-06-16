import 'package:flutter/material.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/size_data.dart';
import 'package:startedpack/helpers/main_date_format_helper.dart';
import 'package:startedpack/widgets/Image_network_widget.dart';
import 'package:startedpack/widgets/custom_text_widget.dart';

class MainBeritaWidget extends StatelessWidget {
  MainBeritaWidget({
    @required this.title,
    @required this.subTitle,
    @required this.image,
    @required this.borderRadius,
    @required this.imageHeight,
    @required this.imageWidth,
    @required this.indicatorHeight,
    @required this.indicatorWidth,
    @required this.errorIconSize,
    @required this.tanggal,
    Key key,
    this.margin = const EdgeInsets.symmetric(
      horizontal: SizeData.padding16,
      vertical: SizeData.padding8,
    ),
    this.padding = const EdgeInsets.all(10),
  }) : super(key: key);

  final MainDateFormatHelper _mainDateFormatHelper = MainDateFormatHelper();
  final String title, subTitle, image, tanggal;
  final EdgeInsets margin, padding;
  final BorderRadius borderRadius;
  final double imageHeight,
      imageWidth,
      indicatorHeight,
      indicatorWidth,
      errorIconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: ColorData.white,
        borderRadius: borderRadius,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(166, 174, 185, 0.24),
            blurRadius: 16.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainCustomTextWidget(
                    text: title,
                    color: ColorData.black,
                    fontSize: SizeData.fontSize16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MainCustomTextWidget(
                    text: _mainDateFormatHelper.formatDate(
                        'dd LLLL yyyy', tanggal),
                    color: ColorData.greyA0,
                    fontSize: SizeData.fontSize14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MainCustomTextWidget(
                    maxLines: 3,
                    text: subTitle,
                    color: ColorData.grey75,
                    fontSize: SizeData.fontSize14,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            MainImageNetworkWidget(
              imageUrl: image,
              height: imageHeight,
              width: imageWidth,
              indicatorHeight: indicatorHeight,
              indicatorWidth: indicatorWidth,
              errorIconSize: errorIconSize,
              borderRadius: borderRadius,
            )
          ],
        ),
      ),
    );
  }
}
