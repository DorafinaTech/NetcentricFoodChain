import 'package:foodchain_netcentric/Home/main_meal.dart';
import 'package:foodchain_netcentric/Home/snacks.dart';
import 'package:foodchain_netcentric/Views/loginscreen_2.dart';
import 'package:foodchain_netcentric/Views/logoutscreen.dart';
import 'package:go_router/go_router.dart';
import '../Home/drinks.dart';
import '../Home/homepage.dart';
import '../Views/login.dart';
import '../Views/onboarding.dart';
import '../Views/onboarding2.dart';
import '../Views/signup.dart';
import '../Views/splashscreen.dart';
import '../Views/welcome.dart';

final router = GoRouter(
  // initialLocation: '/splashScreen',
  initialLocation: RouteNames.splashscreen,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path:RouteNames.splashscreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: RouteNames.onboarding,
      builder: (context, state) => Onboarding(),
    ),
    GoRoute(
        path: RouteNames.onboarding2,
        builder: (context, state) => const Onboarding2()),
    GoRoute(
        path: RouteNames.welcomescreen,
        builder: (context, state) => const WelcomeScreen()),
    GoRoute(
        path: RouteNames.signupscreen,
        builder: (context, state) => SignUpScreen()),
    GoRoute(
        path: RouteNames.loginscreen,
        builder: (context, state) => LoginScreen()),
    GoRoute(
        path: RouteNames.homepage,
        builder: (context, state) => const HomePage()),
    GoRoute(
        path: RouteNames.mainmeal,
        builder: (context, state) => const MainMeal()),
    GoRoute(
        path: RouteNames.snacks,
        builder: (context, state) => const Snacks()),
    GoRoute(
        path: RouteNames.drinks,
        builder: (context, state) => const Drinks()),
    GoRoute(
        path: RouteNames.logout,
        builder: (context, state) => const LogOutScreen()),
    GoRoute(
        path: RouteNames.loginscreen2,
        builder: (context, state) => const LogInScreen2()),
  ],
);

class RouteNames {
  static const String splashscreen = "/Splashscreen";
  static const String onboarding = "/Onboarding";
  static const String onboarding2 = "/Onboarding2";
  static const String welcomescreen = "/WelcomeScreen";
  static const String loginscreen = "/LoginScreen";
  static const String signupscreen = "/SignUpScreen";
  static const String homepage = "/HomePage";
  static const String mainmeal = "/MainMeal";
  static const String snacks = "/Snacks";
  static const String drinks = "/Drinks";
  static const String logout = "/LogOut";
  static const String loginscreen2 = "/LogInScreeen2";
}
