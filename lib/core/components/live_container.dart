import 'package:flutter/material.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class LiveContainer extends StatelessWidget {
  const LiveContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73,
      height: 59,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ao vivo',
                textAlign: TextAlign.center,
                style: context.textTheme.bodySmall,
              ),
              const SizedBox(width: 4),
              Container(
                width: 6,
                height: 6,
                decoration: ShapeDecoration(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Opacity(
            opacity: 0.85,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 1,
              ),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColors.shadowsColor),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '60’',
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
