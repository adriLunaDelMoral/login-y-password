import 'package:go_router/go_router.dart';
import 'package:login_password/presentation/screens/login_screen.dart';
import 'package:login_password/presentation/screens/view_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/viewScreen/:userpass',
      name: ViewScreen.name,
      builder: (context, state) => ViewScreen(userpass: state.pathParameters['userpass']!),
    ),

  ],
);
