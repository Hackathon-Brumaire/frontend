


import 'package:auto_route/annotations.dart';
import 'package:brumaire_frontend/ui/pages/chat_page.dart';
import 'package:brumaire_frontend/ui/pages/contact_page.dart';
import 'package:brumaire_frontend/ui/pages/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    RedirectRoute(path: '/', redirectTo: '/splash'),
    CustomRoute(path: '/splash', page: SplashPage),
    CustomRoute(path: '/chat', page: ChatPage),
    CustomRoute(path: '/contact', page: ContactPage),
  ],
)
class $AppRouter {}
