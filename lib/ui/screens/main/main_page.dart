import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/screens.dart';
import 'package:help_yourself_app/ui/screens/main/main_store.dart';

class MainPage extends BasePage<MainViewModel> {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget content(BuildContext context) => Observer(
        builder: (_) => viewModel.currentPage,
      );

  @override
  Widget? bottomBar(BuildContext context) => Observer(
        builder: (_) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: viewModel.currentPageIndex,
          onTap: viewModel.onBottomBarItemTap,
          items: _bottomNavItems,
        ),
      );

  List<BottomNavigationBarItem> get _bottomNavItems => Screens.values
      .map(
        (screen) => BottomNavigationBarItem(
          icon: Icon(screen.icon),
          label: screen.title,
        ),
      )
      .toList();
}
