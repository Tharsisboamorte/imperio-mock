import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/core/components/tag_card.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class TipsContainer extends StatelessWidget {
  const TipsContainer({
    required this.tips,
    super.key,
  });

  final List<LocalTip> tips;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Dicas',
              style: context.theme.textTheme.titleMedium,
            ),
            SizedBox(width: context.width * .5),
            TextButton(
              child: Text(
                'Ver todas',
                style: context.theme.textTheme.titleSmall,
              ),
              onPressed: () {},
            ),
          ],
        ),
        ListView.builder(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x1E000000),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  width: 225,
                  height: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        height: 141,
                        child: Image.network(
                          tips[index].imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        tips[index].title,
                        softWrap: true,
                        style: context.theme.textTheme.titleSmall,
                      ),
                      Text(
                        tips[index].description,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: context.theme.textTheme.bodySmall,
                      ),
                      Row(
                        children: [
                          TagCard(
                            label: 'Futebol',
                            icon: SvgPicture.asset(
                              MediaRes.footballIcon,
                            ),
                          ),
                          TagCard(
                            label: 'Basquete',
                            icon: SvgPicture.asset(
                              MediaRes.basketballIcon,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
        ),
      ],
    );
  }
}
