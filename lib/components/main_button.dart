import 'package:flutter/material.dart';
import 'package:watch_store/utility/button_style.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.sizeBoxHeight,
      width: AppDimens.sizeBoxWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: AppButtonStlyes.mainButtonStyle,
        child: Text(
          text,
          style: LightAppTextStyles.button,
        ),
      ),
    );
  }
}
