import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imperio_mock/app/modules/home/presenter/bloc/home_bloc.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/HomeBottomNav.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/home_tab_bar.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/last_bets_won_container.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/league_card.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/main_bonus_bets.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/match_container.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/popular_championships_row.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/tips_container.dart';
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
    context.read<HomeBloc>().add(const TipsLoadedEvent());
    context.read<HomeBloc>().add(const BetsLoadedEvent());
    context.read<HomeBloc>().add(const ChampionshipsLoadedEvent());
    context.read<HomeBloc>().add(const BonusLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(392, 83),
        child: HomeTabBar(),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          final listOfTips = context.read<HomeBloc>().listOfTips;
          final listOfBonus = context.read<HomeBloc>().listOfBonus;
          final listOfChamps = context.read<HomeBloc>().listOfChamps;
          final listOfWonBets = context.read<HomeBloc>().listBets;

          return Container(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const LeagueCardCarousel(),
                  PopularChampionshipsRow(championships: listOfChamps),
                  const SizedBox(height: 12),
                  const MatchContainer(),
                  const SizedBox(height: 12),
                  TipsContainer(tips: listOfTips),
                  BestBonusBets(bonus: listOfBonus),
                  LastBetsWonContainer(wonBets: listOfWonBets),
                  const HomeBottomNav(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
