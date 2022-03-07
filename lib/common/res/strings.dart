abstract class Strings {
    static const appName = 'Cloud Chat';
    static final home = HomeScreenStrings();
    static final chatDetails = ChatDetailsStrings();
    static final login = LoginStrings();
    static final registration = RegistrationStrings();
    static final commonErrors = CommonErrorsStrings();
}

class RegistrationStrings {
  final title = 'Sign up';
  final emailHint = 'Email';
  final passwordHint = 'Password';
  final passwordAgainHint = 'Password again';
  final signUpButton = 'SIGN UP';
  final successfulRegistrationMsg = 'Successful registration!';
  final passwordsNotEqual = 'Passwords are not equal.';
  final invalidEmail = 'Invalid email';
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
  final signUpButton = 'Sign up';
}

class CommonErrorsStrings {
  final emptyField = "This field can't be empty.";
}
