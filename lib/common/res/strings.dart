abstract class Strings {
    static const appName = 'Cloud Chat';
    static final home = HomeScreenStrings();
    static final chatDetails = ChatDetailsStrings();
    static final login = LoginStrings();
}

class HomeScreenStrings {
  final title = 'Home';
}

class ChatDetailsStrings {
  final title = 'Chat Details';
  final messageHint = 'Message';
  final sendButton = 'SEND';
}

class LoginStrings {
  final title = 'Login';
  final loginHint = 'Login';
  final passwordHint = 'Password';
  final loginButton = 'LOGIN';
}
