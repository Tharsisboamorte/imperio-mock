import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imperio_mock/app/modules/auth/presenter/bloc/auth_bloc.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/dashboard_screen.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/email_sign_up_screen.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/password_sign_up_screen.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/splash_screen.dart';
import 'package:imperio_mock/app/modules/home/presenter/bloc/home_bloc.dart';
import 'package:imperio_mock/app/modules/home/presenter/views/home_screen.dart';
import 'package:imperio_mock/core/components/loading_column.dart';
import 'package:imperio_mock/core/services/dependency_injection/injection_container.dart';

part 'router.main.dart';
