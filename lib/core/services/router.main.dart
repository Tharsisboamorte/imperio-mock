part of 'router.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return _pageBuilder(
        (_) => BlocProvider(
          create: (_) => sl<AuthBloc>(),
          child: const DashboardScreen(),
        ),
        settings: settings,
      );
    case EmailSignUpScreen.routeName:
      return _pageBuilder(
            (_) => BlocProvider(
          create: (_) => sl<AuthBloc>(),
          child: const EmailSignUpScreen(),
        ),
        settings: settings,
      );
    case PasswordSignUpScreen.routeName:
      return _pageBuilder(
            (_) => BlocProvider(
          create: (_) => sl<AuthBloc>(),
          child: const PasswordSignUpScreen(),
        ),
        settings: settings,
      );
    case HomeScreen.routeName:
      return _pageBuilder(
            (_) => BlocProvider(
          create: (_) => sl<HomeBloc>(),
          child: const HomeScreen(),
        ),
        settings: settings,
      );
    default:
      return _pageBuilder((_) => const LoadingColumn(), settings: settings);
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, _, __) => page(context),
  );
}
