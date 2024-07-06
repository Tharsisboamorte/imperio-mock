import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/tab_item.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 11, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: AppBar(
        backgroundColor: AppColors.gradientTopColor.withOpacity(.21),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SvgPicture.asset(MediaRes.logo),
        ),
        bottom: const TabBar(
          isScrollable: true,
          physics: BouncingScrollPhysics(),
          indicatorWeight: 12,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal: 16),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              width: 5,
            ),
          ),
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          splashFactory: NoSplash.splashFactory,
          tabs: <Widget>[
            TabItem(
              iconAsset: MediaRes.groupSportsIcon,
              tabLabel: 'Todos',
            ),
            TabItem(
              iconAsset: MediaRes.footballIcon,
              tabLabel: 'Futebol',
            ),
            TabItem(
              iconAsset: MediaRes.basketballIcon,
              tabLabel: 'Basquete',
            ),
            TabItem(
              iconAsset: MediaRes.controllerIcon,
              tabLabel: 'E-Sports',
            ),
          ],
        ),
      ),
    );
  }
}
