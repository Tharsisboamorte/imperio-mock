import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';

class TabItem extends StatelessWidget {
  const TabItem({required this.iconAsset, required this.tabLabel, super.key});

  final String iconAsset;
  final String tabLabel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 76,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(
              iconAsset,
              width: 15,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcATop,
              ),
            ),
          ),
          Expanded(
            child: Text(
              tabLabel,
              style: context.theme.textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
