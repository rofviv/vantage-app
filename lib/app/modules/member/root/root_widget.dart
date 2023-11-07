import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/shared.dart';
import 'bloc/root_bloc.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    RootBloc rootBloc = Modular.get();
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: BlocBuilder<RootBloc, RootState>(
        bloc: rootBloc,
        builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: primary,
            currentIndex: state.currentIndex,
            onTap: (index) {
              rootBloc.add(OnChangeIndex(index));
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "Dashboard",
                icon: SvgPicture.asset("assets/icons/home.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  colorFilter: const ColorFilter.mode(primary, BlendMode.srcIn),
                ),
              ),
              BottomNavigationBarItem(
                label: "Community",
                icon: SvgPicture.asset("assets/icons/community.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/icons/community.svg",
                  colorFilter: const ColorFilter.mode(primary, BlendMode.srcIn),
                ),
              ),
              BottomNavigationBarItem(
                label: "AI Checker",
                icon: SvgPicture.asset("assets/icons/symptoms.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/icons/symptoms.svg",
                  colorFilter: const ColorFilter.mode(primary, BlendMode.srcIn),
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: SvgPicture.asset(
                  "assets/icons/user.svg",
                ),
                activeIcon: SvgPicture.asset(
                  "assets/icons/user.svg",
                  colorFilter: const ColorFilter.mode(primary, BlendMode.srcIn),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
