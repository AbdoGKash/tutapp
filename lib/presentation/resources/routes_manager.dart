import 'package:flutter/material.dart';
import 'package:tutapp/presentation/forgot_password/forgot_password.dart';
import 'package:tutapp/presentation/login/login_view.dart';
import 'package:tutapp/presentation/main/main_view.dart';
import 'package:tutapp/presentation/onboarding/onboarding_view.dart';
import 'package:tutapp/presentation/register/register_view.dart';
import 'package:tutapp/presentation/resources/strings.manager.dart';
import 'package:tutapp/presentation/splash/splash_view.dart';
import 'package:tutapp/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onbordingRoute = "/onbordingRoute";
  static const String loginRoute = "/loginRoute";
  static const String registerRoute = "/registerRoute";
  static const String forgotpasswordRoute = "/forgotpasswordRoute";
  static const String mainRoute = "/mainRoute";
  static const String storeDetilshRoute = "/storeDetilshRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    //name or tostring()
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onbordingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotpasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetilshRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefiendRoute();
    }
  }

  static Route<dynamic> unDefiendRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
