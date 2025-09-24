import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_app/features/home/home_screen.dart';

import 'routes.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    // navigatorKey: navigatorKey,
    initialLocation: Routes.home,
    routes: [
      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, navigationShell) {
      //     return BottomNavBar(key: state.pageKey, child: navigationShell);
      //   },
      //   branches: <StatefulShellBranch>[
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.home, builder: (BuildContext context, GoRouterState state) => const HomeScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.bookings, builder: (BuildContext context, GoRouterState state) => const BookingPage())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.saved, builder: (BuildContext context, GoRouterState state) => const FavoriteScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.offers, builder: (BuildContext context, GoRouterState state) => const OffersPage())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.account, builder: (BuildContext context, GoRouterState state) => const AccountScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.contactUs, builder: (BuildContext context, GoRouterState state) => const ContactScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.language, builder: (BuildContext context, GoRouterState state) => const LanguageScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.preferences, builder: (BuildContext context, GoRouterState state) => const PreferencesScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.currency, builder: (BuildContext context, GoRouterState state) => const CurrencyScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.profile, builder: (BuildContext context, GoRouterState state) => const ProfileScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[
      //         GoRoute(path: Routes.notificationSetting, builder: (BuildContext context, GoRouterState state) => const NotificationSettingScreen()),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.wallet, builder: (BuildContext context, GoRouterState state) => const WalletScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.bookings, builder: (BuildContext context, GoRouterState state) => const BookingPage())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.support, builder: (BuildContext context, GoRouterState state) => const SupportScreen())],
      //     ),
      //     StatefulShellBranch(
      //       routes: <RouteBase>[GoRoute(path: Routes.preferences, builder: (BuildContext context, GoRouterState state) => const PreferencesScreen())],
      //     ),
      //   ],
      // ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
