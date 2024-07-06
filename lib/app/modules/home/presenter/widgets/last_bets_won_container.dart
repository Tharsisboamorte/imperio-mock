import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/won_bets.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class LastBetsWonContainer extends StatelessWidget {
  const LastBetsWonContainer({required this.wonBets, super.key});

  final List<WonBets> wonBets;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SvgPicture.asset(MediaRes.fireIcon),
                ),
                Text(
                  'Últimas apostas ganhas',
                  style: context.theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.height * .02,
          ),
          SizedBox(
            height: 150,
            width: double.maxFinite,
            child: ListView.separated(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 15,
                right: 15,
                left: 15,
              ),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, _) => const SizedBox(width: 25),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  width: 310,
                  height: 122,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x1E000000),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 40.91,
                        height: 40,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(wonBets[index].userAvatar),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(110),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                wonBets[index].user,
                                style: context.theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 40.91,
                              height: 40,
                              child: Text(wonBets[index].platform),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              wonBets[index].score.toString(),
                              style: context.theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
