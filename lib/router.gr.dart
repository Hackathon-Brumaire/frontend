// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:brumaire_frontend/ui/pages/chat_page.dart' as _i2;
import 'package:brumaire_frontend/ui/pages/contact_page.dart' as _i3;
import 'package:brumaire_frontend/ui/pages/splash_page.dart' as _i1;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChatRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.ChatPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ContactRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ContactPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i4.RouteConfig(SplashRoute.name, path: '/splash'),
        _i4.RouteConfig(ChatRoute.name, path: '/chat'),
        _i4.RouteConfig(ContactRoute.name, path: '/contact')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i4.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '/chat');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i3.ContactPage]
class ContactRoute extends _i4.PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: '/contact');

  static const String name = 'ContactRoute';
}
