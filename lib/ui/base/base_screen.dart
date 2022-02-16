import 'package:cloud_chat/di/config/injection.dart';
import 'package:cloud_chat/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';

abstract class BaseScreen<VM extends BaseViewModel> extends StatelessWidget {
  @protected
  final viewModel = getIt<VM>();

  BaseScreen({Key? key}) : super(key: key);
}
