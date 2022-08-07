import 'package:flutter/material.dart';
import 'package:help_yourself_app/di/config/injection.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';

abstract class BasePage<VM extends BaseViewModel> extends StatefulWidget {
  @protected
  final viewModel = getIt<VM>();

  BasePage({Key? key}) : super(key: key);


  void onCreate() => {};

  void onDestroy() => {};

  Widget content(BuildContext context);

  AppBar? appBar(BuildContext context) => null;

  Widget? bottomBar(BuildContext context) => null;

  Widget? floatingActionButton(BuildContext context) => null;

  @override
  State<BasePage<VM>> createState() => _BasePageState<VM>();
}

class _BasePageState<VM extends BaseViewModel> extends State<BasePage<VM>> {
  @override
  void initState() {
    super.initState();
    widget.onCreate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widget.appBar(context),
        body: SafeArea(child: widget.content(context)),
        bottomNavigationBar: widget.bottomBar(context),
        floatingActionButton: widget.floatingActionButton(context),
      );
  }

  @override
  void dispose() {
    widget.viewModel.dispose();
    super.dispose();
  }
}
