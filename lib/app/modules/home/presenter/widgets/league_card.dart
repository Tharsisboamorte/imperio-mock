import 'package:flutter/material.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class LeagueCardCarousel extends StatelessWidget {
  const LeagueCardCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final carouselItems = <CarouselItem>[
      const CarouselItem(
        backgroundColor: AppColors.primaryColor,
        image: MediaRes.soccerPlayer,
        title: 'Campeonatos\npopulares',
        subtitle: '',
      ),
      const CarouselItem(
        backgroundColor: AppColors.textDisabled,
        image: MediaRes.nbaPlayer,
        title: 'NBA',
        subtitle: 'National Basketball Association',
      ),
      CarouselItem(
        backgroundColor: AppColors.gradientTopColor.withOpacity(.21),
        image: MediaRes.leagueLogo,
        title: 'League\nof its Own',
        subtitle: '',
      ),
    ];

    return SizedBox(
      height: 306,
      width: double.maxFinite,
      child: ListView.separated(
        separatorBuilder: (context, _) => const SizedBox(
          width: 25,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: carouselItems.length,
        padding: const EdgeInsets.only(left: 15, right: 25),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 19),
                  child: Container(
                    width: 290,
                    height: 147,
                    decoration: ShapeDecoration(
                      color: carouselItems[index].backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  carouselItems[index].title,
                                  style: context.theme.textTheme.titleLarge,
                                ),
                                Visibility(
                                  visible: carouselItems[index].subtitle != '',
                                  child: Text(
                                    carouselItems[index].subtitle,
                                    style: context.theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 121,
                  top: -87,
                  right: -1,
                  bottom: 24,
                  child: Image.asset(
                    carouselItems[index].image,
                    height: 190,
                    width: 307,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CarouselItem {
  const CarouselItem({
    required this.backgroundColor,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final Color backgroundColor;
  final String image;
  final String title;
  final String subtitle;
}
