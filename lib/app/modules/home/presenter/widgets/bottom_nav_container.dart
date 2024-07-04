import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class BottomNavigationContainer extends StatefulWidget {
  const BottomNavigationContainer({super.key});

  @override
  State<BottomNavigationContainer> createState() =>
      _BottomNavigationContainerState();
}

class _BottomNavigationContainerState extends State<BottomNavigationContainer> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: 209,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(70),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorShape: const StadiumBorder(),
          backgroundColor: Colors.black,
          indicatorColor: AppColors.primaryColor,
          selectedIndex: currentPageIndex,
          animationDuration: const Duration(milliseconds: 1000),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: <Widget>[
            NavigationDestination(
              selectedIcon: SvgPicture.asset(MediaRes.homeFilledIcon),
              icon: SvgPicture.asset(MediaRes.homeIcon),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(MediaRes.groupsportsFilledIcon),
              icon: SvgPicture.asset(MediaRes.groupSportsIcon),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(MediaRes.bookmarkFilledIcon),
              icon: SvgPicture.asset(MediaRes.bookmarkIcon),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
