import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/dashboard_screen.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/email_sign_up_screen.dart';
import 'package:imperio_mock/core/res/colors.dart';
import 'package:imperio_mock/core/res/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
      home: const EmailSignUpScreen(),
    );
  }
}
