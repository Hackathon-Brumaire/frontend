// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:brumaire_frontend/ui/pages/action_page.dart' as _i1;
import 'package:brumaire_frontend/ui/pages/all_conversations_page.dart' as _i6;
import 'package:brumaire_frontend/ui/pages/call_page/call_page.dart' as _i5;
import 'package:brumaire_frontend/ui/pages/chat_page.dart' as _i3;
import 'package:brumaire_frontend/ui/pages/contact_page.dart' as _i4;
import 'package:brumaire_frontend/ui/pages/end_of_call_page.dart' as _i7;
import 'package:brumaire_frontend/ui/pages/splash_page.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    ActionRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.ActionPage(),
          opaque: true,
          barrierDismissible: false);
    },
    SplashRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChatRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ChatPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ContactRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.ContactPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CallRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.CallPage(),
          opaque: true,
          barrierDismissible: false);
    },
    AllConversationsRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.AllConversationsPage(),
          opaque: true,
          barrierDismissible: false);
    },
    EndOfCallRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.EndOfCallPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i8.RouteConfig(ActionRoute.name, path: '/action'),
        _i8.RouteConfig(SplashRoute.name, path: '/splash'),
        _i8.RouteConfig(ChatRoute.name, path: '/chat'),
        _i8.RouteConfig(ContactRoute.name, path: '/contact'),
        _i8.RouteConfig(CallRoute.name, path: '/call'),
        _i8.RouteConfig(AllConversationsRoute.name, path: '/conversations'),
        _i8.RouteConfig(EndOfCallRoute.name, path: '/end-of-call')
      ];
}

/// generated route for
/// [_i1.ActionPage]
class ActionRoute extends _i8.PageRouteInfo<void> {
  const ActionRoute() : super(ActionRoute.name, path: '/action');

  static const String name = 'ActionRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i8.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '/chat');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.ContactPage]
class ContactRoute extends _i8.PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: '/contact');

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i5.CallPage]
class CallRoute extends _i8.PageRouteInfo<void> {
  const CallRoute() : super(CallRoute.name, path: '/call');

  static const String name = 'CallRoute';
}

/// generated route for
/// [_i6.AllConversationsPage]
class AllConversationsRoute extends _i8.PageRouteInfo<void> {
  const AllConversationsRoute()
      : super(AllConversationsRoute.name, path: '/conversations');

  static const String name = 'AllConversationsRoute';
}

/// generated route for
/// [_i7.EndOfCallPage]
class EndOfCallRoute extends _i8.PageRouteInfo<void> {
  const EndOfCallRoute() : super(EndOfCallRoute.name, path: '/end-of-call');

  static const String name = 'EndOfCallRoute';
}
