import 'package:intl/intl.dart';

abstract class Strings {
    static String appName() => Intl.message('Help Yourself');
    static final home = HomeScreenStrings();
}

class HomeScreenStrings {
  String title() => Intl.message('Home');
  String logout() => Intl.message('Logout');
}
