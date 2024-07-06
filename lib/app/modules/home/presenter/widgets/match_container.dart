import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imperio_mock/core/components/live_container.dart';
import 'package:imperio_mock/core/components/team_container.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class MatchContainer extends StatelessWidget {
  const MatchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 394,
      width: 358,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        color: CupertinoColors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 2,
            color: AppColors.shadowsColor,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 19, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                const TeamContainer(
                  teamName: 'teamName',
                  teamImage: 'teamImage',
                ),
                SizedBox(
                  width: context.width * .08,
                ),
                const LiveContainer(),
                SizedBox(
                  width: context.width * .08,
                ),
                const TeamContainer(
                  teamName: 'teamName',
                  teamImage: 'teamImage',
                ),
              ],
            ),
            SizedBox(
              height: context.height * .002,
            ),
            Text('2 : 2', style: context.textTheme.displayMedium),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 15),
              child: SizedBox(
                height: 79,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          Text('Casa'),
                          Image.asset(MediaRes.xbetLogo, height: 20.51),
                          Text('3.2', style: context.textTheme.titleMedium),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      width: 26,
                      indent: 20,
                      color: AppColors.shadowsColor,
                      endIndent: 20,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Text('x'),
                          Image.asset(MediaRes.betsafeLogo),
                          Text('3.2', style: context.textTheme.titleMedium),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      width: 26,
                      indent: 20,
                      color: AppColors.shadowsColor,
                      endIndent: 20,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Text('Fora'),
                          Image.asset(MediaRes.betssonLogo),
                          Text('3.2', style: context.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(color: AppColors.shadowsColor, thickness: 2),
            TextButton(
              style: const ButtonStyle(
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: () {},
              child: Text(
                'Ver mais',
                style: context.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
