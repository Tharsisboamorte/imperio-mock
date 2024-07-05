import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:imperio_mock/app/modules/auth/data/datasources/auth_datasource.dart';
import 'package:imperio_mock/app/modules/auth/data/repo/auth_repo.dart';
import 'package:imperio_mock/app/modules/auth/domain/usecases/cache_user.dart';
import 'package:imperio_mock/app/modules/auth/domain/usecases/check_user_logged.dart';
import 'package:imperio_mock/app/modules/auth/domain/usecases/sign_in.dart';
import 'package:imperio_mock/app/modules/auth/presenter/bloc/auth_bloc.dart';
import 'package:imperio_mock/app/modules/home/data/datasource/home_data_source.dart';
import 'package:imperio_mock/app/modules/home/presenter/bloc/home_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'injection_container.main.dart';
