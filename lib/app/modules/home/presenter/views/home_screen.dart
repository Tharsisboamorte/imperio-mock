import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/HomeBottomNav.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/home_tab_bar.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/league_card.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/main_bonus_bets.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/popular_championships_row.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/services/dependency_injection/injection_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    initHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(392, 83),
        child: HomeTabBar(),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.gradientTopColor.withOpacity(.21),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: context.height * .65,
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    LeagueCardCarousel(),
                    PopularChampionshipsRow(),
                    BestBonusBets(),
                  ],
                ),
              ),
            ),
            const HomeBottomNav(),
          ],
        ),
      ),
    );
  }
}
