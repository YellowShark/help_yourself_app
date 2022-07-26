import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:help_yourself_app/di/config/injection.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';

abstract class BasePage<VM extends BaseViewModel> extends StatelessWidget {
  @protected
  final viewModel = getIt<VM>();

  BasePage({Key? key}) : super(key: key);

  Widget content(BuildContext context);

  AppBar? appBar(BuildContext context) => null;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: appBar(context),
    body: Observer(builder: (_) => SafeArea(child: content(context))),
  );
}
