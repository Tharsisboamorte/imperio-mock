import 'package:flutter/material.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class MainBonusBetItem extends StatelessWidget {
  const MainBonusBetItem({
    required this.imageUrl,
    required this.information,
    super.key,
  });

  final String imageUrl;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, bottom: 9),
      child: Container(
        width: 358,
        height: 84,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
              child: Text(imageUrl),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                child: Text(
                  information,
                  style: context.theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
