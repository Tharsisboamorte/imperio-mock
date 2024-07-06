import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imperio_mock/app/modules/home/presenter/bloc/home_bloc.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/help_menu.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/home_bottom_nav.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/home_tab_bar.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/last_bets_won_container.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/league_card.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/main_bonus_bets.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/match_container.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/popular_championships_row.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/tips_container.dart';
import 'package:imperio_mock/core/components/loading_column.dart';
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
    context.read<HomeBloc>().add(const InfoLoadedEvent());
    super.initState();
  }

  bool isVisibleAppBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(392, 83),
        child: Visibility(
          visible: isVisibleAppBar,
          child: const HomeTabBar(),
        ),
      ),
      bottomNavigationBar: const HomeBottomNav(),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is OpenMenu) {
            setState(() {
              isVisibleAppBar = false;
            });
          } else {
            setState(() {
              isVisibleAppBar = true;
            });
          }
        },
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(
              child: LoadingColumn(),
            );
          } else if (state is InfoLoaded) {
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
                    PopularChampionshipsRow(championships: state.listOfChamps),
                    const SizedBox(height: 12),
                    if (state.listOfMatches.isEmpty)
                      const LoadingColumn()
                    else
                      MatchContainer(match: state.listOfMatches[0]),
                    const SizedBox(height: 15),
                    if (state.listOfMatches.isEmpty)
                      const LoadingColumn()
                    else
                      MatchContainer(match: state.listOfMatches[1]),
                    const SizedBox(height: 12),
                    TipsContainer(tips: state.listOfTips),
                    BestBonusBets(bonus: state.listOfBonus),
                    LastBetsWonContainer(wonBets: state.listOfWonBets),
                  ],
                ),
              ),
            );
          } else if (state is OpenMenu) {
            return const HelpMenu();
          } else {
            return const LoadingColumn();
          }
        },
      ),
    );
  }
}
