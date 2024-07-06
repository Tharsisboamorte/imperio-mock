import 'package:flutter/material.dart';
import 'package:imperio_mock/core/res/colors.dart';

class LoadingColumn extends StatelessWidget {
  const LoadingColumn({super.key,});


  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
