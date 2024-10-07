import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';
import 'package:in_ride/src/settings/settings_controller.dart';
import 'package:in_ride/src/settings/settings_view.dart';

part './router.dart';
part './transitions.dart';

/// Custom Route Navigator
/// Handle all our navigation logic

final navKey = GlobalKey<NavigatorState>();

class Get {
  factory Get() => singleInstance;
  Get._internal();
  static Get singleInstance = Get._internal();

  static BuildContext? get context => navKey.currentContext;

  static NavigatorState? get state => navKey.currentState;

  static late SettingsController settingsController;

  /// Init the SettingsController for the Theme
  static void init(SettingsController controller) {
    settingsController = controller;
  }

  static Future<T> pushToWihRouteAndNavKey<T>(Route route) async {
    return await state!.push(route);
  }

  static Future<T?> pushTo<T extends Object?>(
    String page, {
    Object? arguments,
  }) {
    return state!.push<T>(
      Transitions.slideIn(
        getRouteName(page, arguments),
        RouteSettings(name: page, arguments: arguments),
      ),
    );
  }

// Works like Navigator.pushReplacementNamed, just a little tweak to make it work with Named routes
  static Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    String page, {
    Object? arguments,
  }) {
    return state!.pushReplacement(
      Transitions.slideIn(
        getRouteName(page, arguments),
        RouteSettings(name: page, arguments: arguments),
      ),
    );
  }

  static Future<T?> pushAndRemoveUntil<T extends Object?>(
    String page,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return state!.pushAndRemoveUntil<T>(
      Transitions.slideIn(
        getRouteName(page, arguments),
        RouteSettings(name: page, arguments: arguments),
      ),
      predicate,
    );
  }

  static void back<T>([T? value]) {
    return state!.pop<T>(value);
  }

  static Widget getRouteName(String routeName, Object? arguments) {
    // This should return the widget for the given route name
    // You'll need to implement this based on your route structure
    switch (routeName) {
      case SplashScreen.routeName:
        return const SplashScreen();
      case SigninScreen.routeName:
        return const SigninScreen();
      case SignupScreen.routeName:
        return const SignupScreen();
      case OtpScreen.routeName:
        return const OtpScreen();
      case TermsOfUse.routeName:
        return const TermsOfUse();
      case EnablePushNotification.routeName:
        return const EnablePushNotification();
      case EnableLocation.routeName:
        return const EnableLocation();
      case HomeScreen.routeName:
        return const HomeScreen();
      case SettingsView.routeName:
        return SettingsView(controller: settingsController);

      default:
        return const Scaffold(body: Center(child: Text('Route not found')));
    }
  }
}
