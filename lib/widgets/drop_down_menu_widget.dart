// import 'package:flutter/material.dart';

// import 'package:smartvillage/main_commons/main_color_data.dart';
// import 'package:smartvillage/main_routes/moduls/surat/surat_models/surat_pemohon_model.dart';

// class MainDropDownMenuWidget extends StatelessWidget {
//   const MainDropDownMenuWidget({
//     @required this.selectedOption,
//     @required this.onChange,
//     @required this.focusNode,
//     this.listOfOptions,
//     this.listOfPemohonData,
//     Key key,
//     this.isApplicantPicker = true,
//   }) : super(key: key);

//   final List<dynamic> listOfOptions;
//   final List<PemohonData> listOfPemohonData;
//   final String selectedOption;
//   final Function(String) onChange;
//   final bool isApplicantPicker;
//   final FocusNode focusNode;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60.0,
//       width: double.infinity,
//       margin: const EdgeInsets.only(
//         top: 8.0,
//         bottom: 8.0,
//       ),
//       padding: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: ColorData.primaryLight,
//         borderRadius: const BorderRadius.all(
//           Radius.circular(13.0),
//         ),
//         border: Border.all(
//           color: ColorData.grey,
//         ),
//       ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton(
//           focusNode: focusNode,
//           elevation: 0,
//           value: selectedOption,
//           dropdownColor: ColorData.primaryLight,
//           items: isApplicantPicker
//               ? listOfPemohonData
//                   .map(
//                     (element) => DropdownMenuItem(
//                       value: isApplicantPicker ? element.nama : element,
//                       child: Text(
//                         isApplicantPicker
//                             ? element.nama.toString()
//                             : element.toString(),
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.start,
//                         textDirection: TextDirection.ltr,
//                         style: const TextStyle(
//                           color: ColorData.grey42,
//                           fontStyle: FontStyle.normal,
//                           fontSize: 15.0,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   )
//                   .toList()
//               : listOfOptions
//                   .map(
//                     (element) => DropdownMenuItem(
//                       value: element,
//                       child: Text(
//                         element.toString(),
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.start,
//                         textDirection: TextDirection.ltr,
//                         style: const TextStyle(
//                           color: ColorData.grey42,
//                           fontStyle: FontStyle.normal,
//                           fontSize: 15.0,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   )
//                   .toList(),
//           onChanged: (value) {
//             onChange(value.toString());
//           },
//         ),
//       ),
//     );
//   }
// }
