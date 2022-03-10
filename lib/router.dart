import 'package:auto_route/annotations.dart';
import 'package:brumaire_frontend/ui/pages/action_page.dart';
import 'package:brumaire_frontend/ui/pages/all_conversations_page.dart';
import 'package:brumaire_frontend/ui/pages/call_page.dart';
import 'package:brumaire_frontend/ui/pages/chat_page.dart';
import 'package:brumaire_frontend/ui/pages/contact_page.dart';
import 'package:brumaire_frontend/ui/pages/end_of_call_page.dart';
import 'package:brumaire_frontend/ui/pages/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    RedirectRoute(path: '/', redirectTo: '/splash'),
    CustomRoute(path: '/action', page: ActionPage),
    CustomRoute(path: '/splash', page: SplashPage),
    CustomRoute(path: '/chat', page: ChatPage),
    CustomRoute(path: '/contact', page: ContactPage),
    CustomRoute(path: '/call', page: CallPage),
    CustomRoute(path: '/conversations', page: AllConversationsPage),
    CustomRoute(path: '/end-of-call', page: EndOfCallPage, initial: true),
  ],
)
class $AppRouter {}
