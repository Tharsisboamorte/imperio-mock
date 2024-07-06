import 'package:flutter/material.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';

class TeamContainer extends StatelessWidget {
  const TeamContainer({
    required this.teamName,
    required this.teamImage,
    super.key,
  });

  final String teamName;
  final String teamImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78.5,
      height: 115,
      child: Padding(
        padding: const EdgeInsets.only(top: 39),
        child: Column(
          children: [
            Image(image: NetworkImage(teamImage)),
            SizedBox(height: context.height * .02),
            Text(teamName, style: context.textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
