import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/size_data.dart';
import 'package:startedpack/commons/text_data.dart';
import 'package:startedpack/models/main_menus_model.dart';

import 'alert_dialog_widget.dart';
import 'custom_text_widget.dart';

class GridMenuWidget extends StatelessWidget {
  const GridMenuWidget({
    @required List<MainMenusModel> listMenu,
    Key key,
  })  : _listMenu = listMenu,
        super(key: key);

  final List<MainMenusModel> _listMenu;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 15.0,
      children: _listMenu
          .map(
            (data) => InkWell(
              onTap: !data.isActive
                  ? () {
                      AlertDialogWidget.createAlertDialog(
                        context,
                        TextData.textSorry,
                        TextData.textMenuNotAvailableYet,
                        TextData.textOk,
                        alertType: AlertType.info,
                      );
                    }
                  : () {
                      Get.toNamed(data.routeName);
                    },
              child: Column(
                children: [
                  Image.asset(
                    data.icon,
                    height: 48,
                    width: 48,
                    color: data.isActive ? data.color : ColorData.greyCA,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CustomTextWidget(
                    text: data.name,
                    color: ColorData.black,
                    fontSize: SizeData.fontSize12,
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
