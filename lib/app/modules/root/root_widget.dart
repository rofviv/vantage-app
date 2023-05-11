import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../theme/colors.dart';
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
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Training",
                icon: Icon(Icons.sports_baseball_outlined),
              ),
              BottomNavigationBarItem(
                label: "News",
                icon: Icon(Icons.newspaper),
              ),
              BottomNavigationBarItem(
                label: "Cart",
                icon: Icon(Icons.shopping_bag_outlined),
              ),
            ],
          );
        },
      ),
    );
  }
}
