import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/email_sign_up_screen.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/common_button.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/utils/logger_util.dart';

class CommonSignInRow extends StatelessWidget {
  const CommonSignInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: CommonButton(
            width: 147,
            onPressed: () {
              LogUtil.printLog('working');
              Navigator.pushNamed(context, EmailSignUpScreen.routeName);
            },
            label: 'Email',
            backgroundColor: Colors.white,
            isFilledButton: false,
          ),
        ),
        CommonButton(
          width: 147,
          isThereIcon: false,
          onPressed: () {},
          label: 'Telefone',
          backgroundColor: AppColors.primaryColor,
        ),
      ],
    );
  }
}
