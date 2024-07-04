import 'package:flutter/material.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';

class TagCard extends StatelessWidget {
  const TagCard({
    required this.label,
    super.key,
    this.icon,
  });

  final String label;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: icon != null,
            child: Container(
              width: 16,
              height: 16,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: icon,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
