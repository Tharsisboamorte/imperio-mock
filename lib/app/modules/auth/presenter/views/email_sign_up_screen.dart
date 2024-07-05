import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imperio_mock/app/modules/auth/presenter/bloc/auth_bloc.dart';
import 'package:imperio_mock/app/modules/auth/presenter/views/password_sign_up_screen.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/common_button.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/extensions/validation_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class EmailSignUpScreen extends StatefulWidget {
  const EmailSignUpScreen({super.key});

  static const routeName = '/email_sign_up';

  @override
  State<EmailSignUpScreen> createState() => _EmailSignUpScreenState();
}

class _EmailSignUpScreenState extends State<EmailSignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  bool isValid = false;

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
        listener: (context, state) {

        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Qual o seu e-mail?',
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
                    controller: emailController,
                    validator: (email) {
                      if (!emailController.text.isEmail) {
                        return 'E-mail inválido';
                      }
                      isValid = true;
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'manoel.rodolfo@email.com',
                    ),
                  ),
                ),
                Center(
                  child: CommonButton(
                    isThereIcon: false,
                    onPressed: () {
                      context.read<AuthBloc>().userEmail = emailController.text;
                      Navigator.pushNamed(
                        context,
                        PasswordSignUpScreen.routeName,
                      );
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
