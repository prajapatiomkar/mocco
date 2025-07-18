import 'package:go_router/go_router.dart';
import 'package:mocco/features/home/view/home_screen.dart';
import '../../features/detail/view/detail_screen.dart';
import '../../features/splash/view/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailScreen(),
    ),

  ],
);
