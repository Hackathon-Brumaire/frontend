// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:brumaire_frontend/ui/pages/action_page.dart' as _i1;
import 'package:brumaire_frontend/ui/pages/all_conversations_page.dart' as _i7;
import 'package:brumaire_frontend/ui/pages/call_page/call_client_page.dart'
    as _i5;
import 'package:brumaire_frontend/ui/pages/call_page/call_reparator_page.dart'
    as _i4;
import 'package:brumaire_frontend/ui/pages/chat_page.dart' as _i3;
import 'package:brumaire_frontend/ui/pages/contact_page.dart' as _i6;
import 'package:brumaire_frontend/ui/pages/end_of_call_page.dart' as _i8;
import 'package:brumaire_frontend/ui/pages/splash_page.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ActionRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.ActionPage(),
          opaque: true,
          barrierDismissible: false);
    },
    SplashRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChatRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ChatPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CallReparatorRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.CallReparatorPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CallClientRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.CallClientPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ContactRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ContactPage(),
          opaque: true,
          barrierDismissible: false);
    },
    AllConversationsRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.AllConversationsPage(),
          opaque: true,
          barrierDismissible: false);
    },
    EndOfCallRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.EndOfCallPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i9.RouteConfig(ActionRoute.name, path: '/action'),
        _i9.RouteConfig(SplashRoute.name, path: '/splash'),
        _i9.RouteConfig(ChatRoute.name, path: '/chat'),
        _i9.RouteConfig(CallReparatorRoute.name, path: 'call-reparator'),
        _i9.RouteConfig(CallClientRoute.name, path: '/call-client'),
        _i9.RouteConfig(ContactRoute.name, path: '/contact'),
        _i9.RouteConfig(AllConversationsRoute.name, path: '/conversations'),
        _i9.RouteConfig(EndOfCallRoute.name, path: '/end-of-call')
      ];
}

/// generated route for
/// [_i1.ActionPage]
class ActionRoute extends _i9.PageRouteInfo<void> {
  const ActionRoute() : super(ActionRoute.name, path: '/action');

  static const String name = 'ActionRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i9.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '/chat');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.CallReparatorPage]
class CallReparatorRoute extends _i9.PageRouteInfo<void> {
  const CallReparatorRoute()
      : super(CallReparatorRoute.name, path: '/call-reparator');

  static const String name = 'CallReparatorRoute';
}

/// generated route for
/// [_i5.CallClientPage]
class CallClientRoute extends _i9.PageRouteInfo<void> {
  const CallClientRoute() : super(CallClientRoute.name, path: '/call-client');

  static const String name = 'CallClientRoute';
}

/// generated route for
/// [_i6.ContactPage]
class ContactRoute extends _i9.PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: '/contact');

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i7.AllConversationsPage]
class AllConversationsRoute extends _i9.PageRouteInfo<void> {
  const AllConversationsRoute()
      : super(AllConversationsRoute.name, path: '/conversations');

  static const String name = 'AllConversationsRoute';
}

/// generated route for
/// [_i8.EndOfCallPage]
class EndOfCallRoute extends _i9.PageRouteInfo<void> {
  const EndOfCallRoute() : super(EndOfCallRoute.name, path: '/end-of-call');

  static const String name = 'EndOfCallRoute';
}
