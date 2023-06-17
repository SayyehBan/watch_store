// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:watch_store/components/app_text_field.dart';
import 'package:watch_store/components/logo.dart';
import 'package:watch_store/components/main_button.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/extention.dart';
import 'package:watch_store/utility/strings.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Logo(),
              AppDimens.large.height,
              AppTextField(
                  label: AppStrings.enterYourNumber,
                  hint: AppStrings.hintPhoneNumber,
                  controller: _controller),
              MainButton(
                text: AppStrings.next,
                onPressed: () {
                  Navigator.pushNamed(context, ScreenNames.getOtpScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
