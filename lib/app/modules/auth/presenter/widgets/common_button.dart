import 'package:flutter/material.dart';
import 'package:imperio_mock/core/res/colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.onPressed,
    required this.label,
    required this.backgroundColor,
    required this.width,
    this.textColor = Colors.black,
    this.isFilledButton = true,
    this.icon = const Icon(null),
    super.key,
    this.isThereIcon = true,
  });

  final bool isFilledButton;
  final Function? onPressed;
  final double width;
  final bool isThereIcon;
  final String label;
  final Widget? icon;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return isFilledButton
        ? FilledButton.tonal(
            style: ButtonStyle(
              splashFactory: NoSplash.splashFactory,
              fixedSize: MaterialStatePropertyAll<Size>(
                Size(width, 56),
              ),
              backgroundColor: MaterialStatePropertyAll(backgroundColor),
              shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
              ),
            ),
            onPressed: () => onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: isThereIcon,
                  child: icon!,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ],
            ),
          )
        : OutlinedButton(
            style: ButtonStyle(
              splashFactory: NoSplash.splashFactory,
              fixedSize: MaterialStatePropertyAll(Size(width, 56)),
              side: const MaterialStatePropertyAll(
                BorderSide(color: Colors.grey),
              ),
              shape: const MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
              ),
              backgroundColor: const MaterialStatePropertyAll(
                Colors.white,
              ),
            ),
            onPressed: () => onPressed,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.textSecondaryColor,
              ),
            ),
          );
  }
}
