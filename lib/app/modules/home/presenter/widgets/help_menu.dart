import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/app/modules/sports/presentation/view/sports_screen.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class HelpMenu extends StatelessWidget {
  const HelpMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      width: double.maxFinite,
      height: double.maxFinite,
      child: const Padding(
        padding: EdgeInsets.only(top: 45),
        child: Column(
          children: [
            UpperBarMenu(),
            SizedBox(height: 18),
            Divider(color: AppColors.shadowsColor, thickness: 1),
            FirstRowOptions(),
            Divider(color: AppColors.shadowsColor, thickness: 1),
            SecondRowOptions(),
            Divider(color: AppColors.shadowsColor, thickness: 1),
          ],
        ),
      ),
    );
  }
}

class FirstRowOptions extends StatelessWidget {
  const FirstRowOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.homeIcon,
            label: 'Início',
          ),
          onTap: () {},
        ),
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.groupSportsIcon,
            label: 'Esportes',
          ),
          onTap: () {
            Navigator.pushNamed(context, SportsScreen.routeName);
          },
        ),
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.bookmarkIcon,
            label: 'Notícias e Dicas',
          ),
          onTap: () {},
        ),
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.favoritesIcon,
            label: 'Favoritos',
          ),
          onTap: () {},
        ),
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.influencerIcon,
            label: 'Influenciadores',
          ),
          onTap: () {},
        ),
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.pieChartIcon,
            label: 'Comparador de odds',
          ),
          onTap: () {},
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}

class SecondRowOptions extends StatelessWidget {
  const SecondRowOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.couponIcon,
            label: 'Jogo consciente',
          ),
          onTap: () {},
        ),
        GestureDetector(
          child: const MenuItem(
            assetName: MediaRes.shieldIcon,
            label: 'Privacidade e segurança',
          ),
          onTap: () {},
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({required this.assetName, required this.label, super.key});

  final String assetName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: Row(
        children: [
          SvgPicture.asset(assetName),
          const SizedBox(width: 12),
          Text(label, style: context.textTheme.bodyLarge),
        ],
      ),
    );
  }
}

class UpperBarMenu extends StatelessWidget {
  const UpperBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            child: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 25),
        Container(
          width: 154,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(120)),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 2.5,
                color: AppColors.shadowsColor,
              ),
            ],
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.help_outline,
                color: AppColors.textSecondaryColor,
              ),
              Text(
                'Ajuda e suporte',
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const SizedBox(width: 25),
      ],
    );
  }
}
