import 'package:cloud_chat/ui/base/base_view_model.dart';

abstract class SplashViewModel extends BaseViewModel {
  Future<bool> authorized();
}