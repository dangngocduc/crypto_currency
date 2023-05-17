import 'package:crypto_currency/page/detail_coin/coin_detail_page.dart';
import 'package:crypto_currency/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/detail',
        builder: (context, state) {
          return const CoinDetailPage();
        },
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        return ScrollConfiguration(behavior: NerverOverScroll(), child: child!);
      },
      routerConfig: _router,
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF212126),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF131316), elevation: 0),
          scaffoldBackgroundColor: const Color(0xFF131316),
          primaryTextTheme: GoogleFonts.quicksandTextTheme(
              ThemeData.dark().primaryTextTheme)),
    );
  }
}

class NerverOverScroll extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
