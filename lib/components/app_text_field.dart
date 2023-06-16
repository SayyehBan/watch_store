import 'package:flutter/material.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/extention.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.label,
      required this.hint,
      this.icon = const SizedBox(),
      required this.controller,
      this.textAlign = TextAlign.center,
      this.inputType});
  final String label;
  final String hint;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          Dimens.medium.height,
          SizedBox(
            height: Dimens.sizeBoxHeight,
            width: Dimens.sizeBoxWidth,
            child: TextField(
              textAlign: textAlign,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(hintText: hint, prefixIcon: icon),
            ),
          )
        ],
      ),
    );
  }
}
