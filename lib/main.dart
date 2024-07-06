import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/splash_screen.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/theme.dart';
import 'package:imperio_mock/core/services/dependency_injection/injection_container.dart';
import 'package:imperio_mock/core/services/router.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        textTheme: AppTheme().textTheme,
        inputDecorationTheme: AppTheme().inputTheme,
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.white,
          accentColor: AppColors.primaryColor,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
