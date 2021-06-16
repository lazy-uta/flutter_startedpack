import 'package:flutter/material.dart';

import 'package:date_time_picker/date_time_picker.dart';

import 'package:startedpack/commons/text_data.dart';

class MainDateTimePickerWidget extends StatelessWidget {
  const MainDateTimePickerWidget({
    @required this.dateLabelText,
    @required this.focusNode,
    @required this.onChanged,
    this.initialValue,
    this.onSaved,
    this.onFieldSubmitted,
    this.dateTimePickerType = DateTimePickerType.date,
    this.timeLabelText = TextData.textHintTime,
    this.dateMask = 'dd LLLL yyyy',
    this.textAlign = TextAlign.start,
    this.textEditingController,
    this.decoration,
    Key key,
  }) : super(key: key);

  final DateTimePickerType dateTimePickerType;
  final String dateMask, initialValue, dateLabelText, timeLabelText;
  final FocusNode focusNode;
  final TextAlign textAlign;
  final Function(String) onSaved, onChanged, onFieldSubmitted;
  final InputDecoration decoration;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
      type: dateTimePickerType,
      dateMask: dateMask,
      initialValue: initialValue,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      icon: const Icon(Icons.event),
      dateLabelText: dateLabelText,
      timeLabelText: timeLabelText,
      decoration: decoration,
      textAlign: textAlign,
      calendarTitle: TextData.textHintDate,
      cancelText: TextData.textCancel,
      confirmText: TextData.textOk,
      focusNode: focusNode,
      onSaved: onSaved,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      controller: textEditingController,
    );
  }
}
