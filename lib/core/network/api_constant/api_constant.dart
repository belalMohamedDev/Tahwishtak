class ApiConstants {
  static const String baseUrl = 'https://tahwishtak-backend-production.up.railway.app';
  static const int apiTimeOut = 120 * 1000;

  static const String login = '/v1/api/auth/login';
  static const String signup = '/v1/api/auth/signUp';
  static const String forgetPassword = '/v1/api/auth/forgetPassword';
  static const String verifyCode = '/v1/api/auth/verifyCode';
  static const String resetPassword = '/v1/api/auth/resetPassword';
  static const String refreshToken = '$baseUrl/v1/api/auth/token';
  static const String logOut = '/v1/api/auth/logout';




}
