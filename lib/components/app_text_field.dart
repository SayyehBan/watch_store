import 'package:flutter/material.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/extention.dart';
import 'package:watch_store/utility/text_style.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.label,
      required this.hint,
      this.icon = const SizedBox(),
      required this.controller,
      this.textAlign = TextAlign.center,
      this.textDirection = TextDirection.rtl,
      this.inputType,
      this.prefixLabel = ''});
  final String label;
  final String prefixLabel;
  final String hint;
  final TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: AppDimens.sizeBoxWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: LightAppTextStyles.title,
                ),
                Text(
                  prefixLabel,
                  style: LightAppTextStyles.title,
                ),
              ],
            ),
          ),
          AppDimens.medium.height,
          SizedBox(
            height: AppDimens.sizeBoxHeight,
            width: AppDimens.sizeBoxWidth,
            child: TextField(
              style: LightAppTextStyles.title,
              textAlign: textAlign,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: LightAppTextStyles.hint,
                prefixIcon: icon,
                hintTextDirection: textDirection,
              ),
            ),
          )
        ],
      ),
    );
  }
}
