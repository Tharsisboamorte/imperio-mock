import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/common_button.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class SocialSignInColumn extends StatelessWidget {
  const SocialSignInColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: CommonButton(
            width: 298,
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(right: 41),
              child: SvgPicture.asset(
                MediaRes.googleIcon,
                height: 24,
              ),
            ),
            label: 'Entrar com google',
            backgroundColor: AppColors.secondaryColor,
          ),
        ),
        CommonButton(
          width: 298,
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.only(right: 41),
            child: SvgPicture.asset(
              MediaRes.appleIcon,
              height: 24,
            ),
          ),
          label: 'Entrar com Apple',
          backgroundColor: Colors.black,
          textColor: Colors.white,
        ),
      ],
    );
  }
}
