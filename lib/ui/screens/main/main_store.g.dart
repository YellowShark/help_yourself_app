// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainStore on _MainStore, Store {
  late final _$_currentPageAtom =
      Atom(name: '_MainStore._currentPage', context: context);

  BasePage<BaseViewModel> get currentPage {
    _$_currentPageAtom.reportRead();
    return super._currentPage;
  }

  @override
  BasePage<BaseViewModel> get _currentPage => currentPage;

  @override
  set _currentPage(BasePage<BaseViewModel> value) {
    _$_currentPageAtom.reportWrite(value, super._currentPage, () {
      super._currentPage = value;
    });
  }

  late final _$_currentPageIndexAtom =
      Atom(name: '_MainStore._currentPageIndex', context: context);

  int get currentPageIndex {
    _$_currentPageIndexAtom.reportRead();
    return super._currentPageIndex;
  }

  @override
  int get _currentPageIndex => currentPageIndex;

  @override
  set _currentPageIndex(int value) {
    _$_currentPageIndexAtom.reportWrite(value, super._currentPageIndex, () {
      super._currentPageIndex = value;
    });
  }

  late final _$_MainStoreActionController =
      ActionController(name: '_MainStore', context: context);

  @override
  void onBottomBarItemTap(int index) {
    final _$actionInfo = _$_MainStoreActionController.startAction(
        name: '_MainStore.onBottomBarItemTap');
    try {
      return super.onBottomBarItemTap(index);
    } finally {
      _$_MainStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
