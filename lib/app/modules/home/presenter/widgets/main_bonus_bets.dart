import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/bonus.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/main_bonus_bets_item.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class BestBonusBets extends StatelessWidget {
  const BestBonusBets({
    required this.bonus,
    super.key,
  });

  final List<Bonus> bonus;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            'Principais bônus de aposta',
            style: context.theme.textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 15),
        MainBonusBetItem(
          imageUrl: bonus[0].platform,
          information: bonus[0].discount,
        ),
        MainBonusBetItem(
          imageUrl: bonus[1].platform,
          information: bonus[1].discount,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Veja mais bônus disponíveis',
              style: context.theme.textTheme.titleSmall,
            ),
            SizedBox(width: context.width * .03),
            FilledButton.tonal(
              style: const ButtonStyle(
                splashFactory: NoSplash.splashFactory,
                fixedSize: MaterialStatePropertyAll<Size>(
                  Size(67, 47.94),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  AppColors.primaryColor,
                ),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
