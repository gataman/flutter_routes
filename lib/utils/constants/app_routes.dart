class AppRoutes {
  const AppRoutes._();

  //Main Routes
  static const String routeAuthMain = '/auth';
  static const String routeAdminMain = '/admin';
  static const String routeAdminUserDetail = '/user-detail/:userId';

  //Auth Routes:
  static const String routeAuthLogin = 'login';
  static const String routeAuthSignUp = 'signup';

  //Admin Routes:
  static const String routeAdminDashboard = 'dashboard';
  static const String routeAdminUsers = 'users';
  static const String routeAdminUserList = 'user-list';
  static const String routeAdminMessages = 'messages';
}
