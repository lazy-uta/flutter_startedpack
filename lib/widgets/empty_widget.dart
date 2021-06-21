import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    @required String pesan,
    Key key,
  })  : _pesan = pesan,
        super(key: key);

  final String _pesan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('assets/main_assets/main_svg_images/empty.svg'),
        Text(
          'Opss !! $_pesan',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
