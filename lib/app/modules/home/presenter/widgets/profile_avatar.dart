import 'package:flutter/material.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2, // Set your desired border width
        ),
      ),
      child: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black,
        foregroundImage: AssetImage(MediaRes.user),
      ),
    );
  }
}
