import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/match.dart';
import 'package:imperio_mock/core/components/live_container.dart';
import 'package:imperio_mock/core/components/team_container.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class MatchContainer extends StatelessWidget {
  const MatchContainer({required this.match, super.key});

  final LocalMatch match;

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
        padding: const EdgeInsets.only(top: 19, left: 15, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                TeamContainer(
                  teamName: match.teamA,
                  teamImage: match.teamAImage,
                ),
                SizedBox(
                  width: context.width * .08,
                ),
                const LiveContainer(),
                SizedBox(
                  width: context.width * .08,
                ),
                TeamContainer(
                  teamName: match.teamB,
                  teamImage: match.teamBImage,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                '${match.teamAScore} : ${match.teamBScore}',
                style: context.textTheme.displaySmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 15),
              child: SizedBox(
                height: 79,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: Column(
                        children: [
                          Text('Casa'),
                          Image.asset(MediaRes.xbetLogo, height: 20.51),
                          Text(
                            match.oneXbetOddsAvg.toString(),
                            style: context.textTheme.titleMedium,
                          ),
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
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        children: [
                          Text('x'),
                          Image.asset(MediaRes.betsafeLogo),
                          Text(match.betsafeOddsAvg.toString(),
                              style: context.textTheme.titleMedium),
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
                      padding: const EdgeInsets.only(left: 5, right: 15),
                      child: Column(
                        children: [
                          Text('Fora'),
                          Image.asset(MediaRes.betssonLogo),
                          Text(
                            match.betssonOddsAvg.toString(),
                            style: context.textTheme.titleMedium,
                          ),
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
