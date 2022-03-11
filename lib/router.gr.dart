// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:brumaire_frontend/ui/pages/action_page.dart' as _i1;
import 'package:brumaire_frontend/ui/pages/all_conversations_page.dart' as _i8;
import 'package:brumaire_frontend/ui/pages/call_page/call_client_page.dart'
    as _i6;
import 'package:brumaire_frontend/ui/pages/call_page/call_reparator_page.dart'
    as _i5;
import 'package:brumaire_frontend/ui/pages/chat_page.dart' as _i3;
import 'package:brumaire_frontend/ui/pages/contact_page.dart' as _i7;
import 'package:brumaire_frontend/ui/pages/end_of_call_page.dart' as _i9;
import 'package:brumaire_frontend/ui/pages/splash_page.dart' as _i2;
import 'package:brumaire_frontend/ui/pages/support_chat_page.dart' as _i4;
import 'package:brumaire_frontend/ui/pages/video_page.dart' as _i10;
import 'package:flutter/material.dart' as _i12;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    ActionRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.ActionPage(),
          opaque: true,
          barrierDismissible: false);
    },
    SplashRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ChatRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ChatPage(),
          opaque: true,
          barrierDismissible: false);
    },
    SupportChatRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SupportChatRouteArgs>(
          orElse: () => SupportChatRouteArgs(id: pathParams.getInt('id')));
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.SupportChatPage(key: args.key, id: args.id),
          opaque: true,
          barrierDismissible: false);
    },
    CallReparatorRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.CallReparatorPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CallClientRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.CallClientPage(),
          opaque: true,
          barrierDismissible: false);
    },
    ContactRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ContactPage(),
          opaque: true,
          barrierDismissible: false);
    },
    AllConversationsRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.AllConversationsPage(),
          opaque: true,
          barrierDismissible: false);
    },
    EndOfCallRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.EndOfCallPage(),
          opaque: true,
          barrierDismissible: false);
    },
    VideoRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.VideoPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i11.RouteConfig(ActionRoute.name, path: '/action'),
        _i11.RouteConfig(SplashRoute.name, path: '/splash'),
        _i11.RouteConfig(ChatRoute.name, path: '/chat'),
        _i11.RouteConfig(SupportChatRoute.name, path: '/support-chat'),
        _i11.RouteConfig(CallReparatorRoute.name, path: 'call-reparator'),
        _i11.RouteConfig(CallClientRoute.name, path: '/call-client'),
        _i11.RouteConfig(ContactRoute.name, path: '/contact'),
        _i11.RouteConfig(AllConversationsRoute.name, path: '/conversations'),
        _i11.RouteConfig(EndOfCallRoute.name, path: '/end-of-call'),
        _i11.RouteConfig(VideoRoute.name, path: '/video-page')
      ];
}

/// generated route for
/// [_i1.ActionPage]
class ActionRoute extends _i11.PageRouteInfo<void> {
  const ActionRoute() : super(ActionRoute.name, path: '/action');

  static const String name = 'ActionRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i11.PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: '/chat');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.SupportChatPage]
class SupportChatRoute extends _i11.PageRouteInfo<SupportChatRouteArgs> {
  SupportChatRoute({_i12.Key? key, required int id})
      : super(SupportChatRoute.name,
            path: '/support-chat',
            args: SupportChatRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'SupportChatRoute';
}

class SupportChatRouteArgs {
  const SupportChatRouteArgs({this.key, required this.id});

  final _i12.Key? key;

  final int id;

  @override
  String toString() {
    return 'SupportChatRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.CallReparatorPage]
class CallReparatorRoute extends _i11.PageRouteInfo<void> {
  const CallReparatorRoute()
      : super(CallReparatorRoute.name, path: 'call-reparator');

  static const String name = 'CallReparatorRoute';
}

/// generated route for
/// [_i6.CallClientPage]
class CallClientRoute extends _i11.PageRouteInfo<void> {
  const CallClientRoute() : super(CallClientRoute.name, path: '/call-client');

  static const String name = 'CallClientRoute';
}

/// generated route for
/// [_i7.ContactPage]
class ContactRoute extends _i11.PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: '/contact');

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i8.AllConversationsPage]
class AllConversationsRoute extends _i11.PageRouteInfo<void> {
  const AllConversationsRoute()
      : super(AllConversationsRoute.name, path: '/conversations');

  static const String name = 'AllConversationsRoute';
}

/// generated route for
/// [_i9.EndOfCallPage]
class EndOfCallRoute extends _i11.PageRouteInfo<void> {
  const EndOfCallRoute() : super(EndOfCallRoute.name, path: '/end-of-call');

  static const String name = 'EndOfCallRoute';
}

/// generated route for
/// [_i10.VideoPage]
class VideoRoute extends _i11.PageRouteInfo<void> {
  const VideoRoute() : super(VideoRoute.name, path: '/video-page');

  static const String name = 'VideoRoute';
}
