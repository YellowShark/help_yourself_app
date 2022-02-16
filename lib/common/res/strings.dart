abstract class Strings {
    static const appName = 'Cloud Chat';
    static final home = HomeScreenStrings();
    static final chatDetails = ChatDetailsStrings();
    static final login = LoginStrings();
    static final commonErrors = CommonErrorsStrings();
}

class HomeScreenStrings {
  final title = 'Home';
  final logout = 'Logout';
}

class ChatDetailsStrings {
  final title = 'Chat Details';
  final messageHint = 'Message';
  final sendButton = 'SEND';
}

class LoginStrings {
  final title = 'Login';
  final loginHint = 'E-mail';
  final passwordHint = 'Password';
  final unknownUser = 'No user found for that email.';
  final invalidPassword = 'Wrong password provided for that user.';
  final loginButton = 'LOGIN';
}

class CommonErrorsStrings {
  final emptyField = "This field can't be empty.";
}
