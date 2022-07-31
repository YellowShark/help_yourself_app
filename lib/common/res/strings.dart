import 'package:intl/intl.dart';

abstract class Strings {
    static String appName() => Intl.message('Help Yourself');
    static final home = HomeScreenStrings();
    static final addEmotion = AddEmotionStrings();
}

class AddEmotionStrings {
  String title() => Intl.message('Новое событие');
  String chooseEmotion() => Intl.message('Выберите эмоцию');
  String details() => Intl.message('Детали');
}

class HomeScreenStrings {
  String title() => Intl.message('Home');
  String logout() => Intl.message('Logout');
}
