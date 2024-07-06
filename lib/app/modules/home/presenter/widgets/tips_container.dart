import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/core/components/tag_card.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class TipsContainer extends StatelessWidget {
  const TipsContainer({
    required this.tips,
    super.key,
  });

  final List<LocalTip> tips;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: double.maxFinite,
      child: Column(
        children: [
          const TipsTitle(),
          SizedBox(
            width: double.maxFinite,
            height: 360,
            child: ListView.separated(
              itemCount: 4,
              padding: const EdgeInsets.only(right: 15, left: 15),
              separatorBuilder: (context, index) => const SizedBox(
                width: 12,
              ),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 165,
                      width: 255,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image(
                          image: NetworkImage(
                            tips[index].imgUrl,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.shadowsColor,
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(top: 5, right: 5),
                      width: 255,
                      height: 181.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 12,
                              right: 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tips[index].title,
                                  style: context.theme.textTheme.titleSmall,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  maxLines: 3,
                                ),
                                SizedBox(
                                  height: context.height * .01,
                                ),
                                Text(
                                  tips[index].description,
                                  style: context.theme.textTheme.bodyMedium,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(width: context.width * .02),
                                TagCard(
                                  label: 'Futebol',
                                  icon: SvgPicture.asset(MediaRes.footballIcon),
                                ),
                                SizedBox(width: context.width * .02),
                                TagCard(
                                  label: 'Basquete',
                                  icon: SvgPicture.asset(
                                    MediaRes.basketballIcon,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TipsTitle extends StatelessWidget {
  const TipsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: context.width * .05),
        Text(
          'Dicas',
          style: context.theme.textTheme.titleLarge,
        ),
        SizedBox(width: context.width * .5),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: TextButton(
            child: Text(
              'Ver todas',
              style: context.theme.textTheme.titleMedium,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
