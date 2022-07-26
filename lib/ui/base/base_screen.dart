import 'package:flutter/material.dart';
import 'package:help_yourself_app/di/config/injection.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';

abstract class BaseScreen<VM extends BaseViewModel> extends StatelessWidget {
  @protected
  final viewModel = getIt<VM>();

  BaseScreen({Key? key}) : super(key: key);
}
