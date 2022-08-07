import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/screens.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

final _screens = Screens.values.map((e) => e.page).toList();

abstract class MainViewModel extends BaseViewModel {
  BasePage get currentPage;
  int get currentPageIndex;
  void onBottomBarItemTap(int index);
}

@LazySingleton(as: MainViewModel)
class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store implements MainViewModel {
  final AppRouter _appRouter;

  _MainStore(this._appRouter);

  @readonly
  BasePage<BaseViewModel> _currentPage = _screens.first;

  @readonly
  int _currentPageIndex = 0;

  @action
  @override
  void onBottomBarItemTap(int index) {
    _currentPage = _screens[index];
    _currentPageIndex = index;
  }

  @override
  Future dispose() async {}
}
