import 'package:flutter/material.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/text_data.dart';

class RefresherWidget extends StatelessWidget {
  const RefresherWidget({
    @required this.refreshController,
    @required this.onRefresh,
    @required this.child,
    Key key,
    this.isPullUpEnable = false,
    this.onLoading,
  }) : super(key: key);

  final RefreshController refreshController;
  final Function onRefresh;
  final bool isPullUpEnable;
  final Function onLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      scrollDirection: Axis.vertical,
      header: const ClassicHeader(
        idleText: TextData.textPullToRefresh,
        releaseText: TextData.textRelease,
        refreshingText: TextData.textPleaseWait,
        completeText: TextData.textDone,
        failedText: TextData.textFailed,
        releaseIcon: Icon(
          Icons.arrow_upward,
          color: Colors.grey,
        ),
        textStyle: TextStyle(
          color: ColorData.grey52,
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
      ),
      controller: refreshController,
      onRefresh: () {
        onRefresh();
      },
      enablePullUp: isPullUpEnable,
      onLoading: () {
        onLoading();
      },
      child: child,
    );
  }
}
