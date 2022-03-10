// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:brumaire_frontend/ui/pages/action_page.dart' as _i1;
import 'package:brumaire_frontend/ui/pages/call_page/call_page.dart' as _i5;
import 'package:brumaire_frontend/ui/pages/chat_page.dart' as _i3;
import 'package:brumaire_frontend/ui/pages/contact_page.dart' as _i4;
import 'package:brumaire_frontend/ui/pages/splash_page.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ActionRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.ActionPage(),
          opaque: true,
          barrierDismissible: false);
    },
    SplashRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChatRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ChatPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ContactRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.ContactPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CallRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.CallPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i6.RouteConfig(ActionRoute.name, path: '/Action'),
        _i6.RouteConfig(SplashRoute.name, path: '/splash'),
        _i6.RouteConfig(ChatRoute.name, path: '/chat'),
        _i6.RouteConfig(ContactRoute.name, path: '/contact'),
        _i6.RouteConfig(CallRoute.name, path: '/call')
      ];
}

/// generated route for
/// [_i1.ActionPage]
class ActionRoute extends _i6.PageRouteInfo<void> {
  const ActionRoute() : super(ActionRoute.name, path: '/Action');

  static const String name = 'ActionRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i6.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '/chat');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.ContactPage]
class ContactRoute extends _i6.PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: '/contact');

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i5.CallPage]
class CallRoute extends _i6.PageRouteInfo<void> {
  const CallRoute() : super(CallRoute.name, path: '/call');

  static const String name = 'CallRoute';
}
