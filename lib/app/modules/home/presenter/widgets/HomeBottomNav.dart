import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/bottom_nav_container.dart';
import 'package:imperio_mock/app/modules/home/presenter/widgets/profile_avatar.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/media_res.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav>
    with TickerProviderStateMixin {
  bool isActive = false;
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 950),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: context.width,
      color: Colors.white,
      child: Column(
        children: [
          SvgPicture.asset(MediaRes.logo),
          SizedBox(height: context.height * .08),
          Row(
            children: [
              SizedBox(width: context.width * .05),
              FloatingActionButton(
                backgroundColor: Colors.black,
                splashColor: Colors.transparent,
                shape: const CircleBorder(),
                onPressed: () {
                  setState(() {
                    isActive = !isActive;
                  });
                  isActive == false
                      ? _animationController.forward()
                      : _animationController.reverse();
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: _animationController,
                  size: 24,
                ),
              ),
              SizedBox(width: context.width * .05),
              const BottomNavigationContainer(),
              SizedBox(width: context.width * .05),
              const ProfileAvatar(),
            ],
          )
        ],
      ),
    );
  }
}
