import 'package:flutter/material.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class BestBonusBets extends StatelessWidget {
  const BestBonusBets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bonusBetsItems = <BonusBetsItems>[
      const BonusBetsItems(information: 'information', imageUrl: 'imageUrl'),
      const BonusBetsItems(information: 'information', imageUrl: 'imageUrl'),
    ];

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
        SizedBox(
          height: 190,
          width: double.maxFinite,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 15, right: 15),
            separatorBuilder: (context, _) => const SizedBox(height: 15),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                width: 358,
                height: 84,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: ShapeDecoration(
                  color: AppColors.gradientTopColor.withOpacity(.21),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 40.91,
                      height: 40,
                      child: Text(bonusBetsItems[index].imageUrl),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          bonusBetsItems[index].information,
                          style: context.theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
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

class BonusBetsItems {
  const BonusBetsItems({
    required this.information,
    required this.imageUrl,
  });

  final String information;
  final String imageUrl;
}
