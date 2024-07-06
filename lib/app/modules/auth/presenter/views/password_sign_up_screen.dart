import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imperio_mock/app/modules/auth/presenter/bloc/auth_bloc.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/common_button.dart';
import 'package:imperio_mock/app/modules/home/presenter/views/home_screen.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class PasswordSignUpScreen extends StatefulWidget {
  const PasswordSignUpScreen({super.key});

  static const routeName = '/password_sign_up';

  @override
  State<PasswordSignUpScreen> createState() => _PasswordSignUpScreenState();
}

class _PasswordSignUpScreenState extends State<PasswordSignUpScreen> {
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<AuthBloc>();
          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Qual sua senha?',
                  style: context.theme.textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                  ),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    obscureText: _isPasswordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        icon: Icon(
                          !_isPasswordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                      ),
                      hintText: 'Senha',
                    ),
                  ),
                ),
                Center(
                  child: CommonButton(
                    isThereIcon: false,
                    onPressed: () {
                      cubit
                        ..add(
                          SignInEvent(
                            email: cubit.userEmail,
                            password: passwordController.text,
                          ),
                        )
                        ..add(const CacheUserEvent());
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    label: 'Continuar',
                    backgroundColor: AppColors.primaryColor,
                    width: 296,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
