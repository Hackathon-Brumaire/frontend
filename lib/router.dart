import 'package:auto_route/annotations.dart';
import 'ui/pages/action_page.dart';
import 'ui/pages/all_conversations_page.dart';
import 'ui/pages/call_page/call_client_page.dart';
import 'ui/pages/chat_page.dart';
import 'ui/pages/contact_page.dart';
import 'ui/pages/end_of_call_page.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/call_page/call_reparator_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    RedirectRoute(path: '/', redirectTo: '/splash'),
    CustomRoute(path: '/action', page: ActionPage),
    CustomRoute(path: '/splash', page: SplashPage),
    CustomRoute(path: '/chat', page: ChatPage),
    CustomRoute(path: 'call-reparator', page: CallReparatorPage),
    CustomRoute(path: '/call-client', page: CallClientPage),
    CustomRoute(path: '/contact', page: ContactPage),
    CustomRoute(path: '/conversations', page: AllConversationsPage),
    CustomRoute(path: '/end-of-call', page: EndOfCallPage),
  ],
)
class $AppRouter {}
