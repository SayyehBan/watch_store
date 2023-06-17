// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:watch_store/components/app_text_field.dart';
import 'package:watch_store/components/logo.dart';
import 'package:watch_store/components/main_button.dart';
import 'package:watch_store/utility/dimens.dart';
import 'package:watch_store/utility/extention.dart';
import 'package:watch_store/utility/strings.dart';
import 'package:watch_store/utility/text_style.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});
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
              Text(
                AppStrings.otpCodeSendFor
                    .replaceAll(AppStrings.replace, "09111111111"),
                style: LightAppTextStyles.title,
              ),
              const Text(
                AppStrings.wrongNumberEditNumber,
                style: LightAppTextStyles.link,
              ),
              AppDimens.large.height,
              AppTextField(
                  prefixLabel: '2:00',
                  label: AppStrings.enterYourNumber,
                  hint: AppStrings.hintPhoneNumber,
                  controller: _controller),
              MainButton(
                text: AppStrings.next,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
