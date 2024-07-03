import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/common_sign_in_row.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/dashboard_header.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/social_sign_in_column.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static const routeName = '/dashboard';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7,
              bottom: context.height * .09,
              left: 8,
              right: 8,
            ),
            child: const DashboardHeader(),
          ),
          const SocialSignInColumn(),
          Padding(
            padding: const EdgeInsets.all(41),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: AppColors.secondaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                    'ou entre com',
                    style: context.theme.textTheme.titleSmall,
                  ),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          const CommonSignInRow(),
        ],
      ),
    );
  }
}
