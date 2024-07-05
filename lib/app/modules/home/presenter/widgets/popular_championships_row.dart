import 'package:flutter/material.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class PopularChampionshipsRow extends StatelessWidget {
  const PopularChampionshipsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              'Campeonatos populares',
              style: context.theme.textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 85,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 15, right: 15),
              separatorBuilder: (context, _) => const SizedBox(
                width: 8,
              ),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  height: 80,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: AppColors.gradientTopColor.withOpacity(.21),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 44,
                      height: 52,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage('https://via.placeholder.com/44x52'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
