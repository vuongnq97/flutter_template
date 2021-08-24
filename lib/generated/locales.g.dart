class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en': Locales.en,
    'vi': Locales.vi,
  };
}

class LocaleKeys {
  LocaleKeys._();

  static const appTitle = 'appTitle';
  static const Login_NoInternet = 'Login_NoInternet';
  static const Shared_Error = 'Shared_Error';
  static const Shared_ErrorMessage = 'Shared_ErrorMessage';
}

class Locales {
  static const en = {
    'appTitle': 'Flutter Template',
    'Login_NoInternet': 'No internet connection.',
    'Shared_Error': 'Error',
    'Shared_ErrorMessage': 'Something went wrong, please try again later.',
  };
  static const vi = {
    'appTitle': 'Flutter Template',
    'Login_NoInternet': 'Không có kết nối mạng.',
    'Shared_Error': 'Lỗi',
    'Shared_ErrorMessage': 'Đã xảy ra lỗi, xin vui lòng thử lại sau.',
  };
}
