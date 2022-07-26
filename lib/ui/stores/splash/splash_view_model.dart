import 'package:help_yourself_app/ui/base/base_view_model.dart';

abstract class SplashViewModel extends BaseViewModel {
  Future<bool> authorized();
}