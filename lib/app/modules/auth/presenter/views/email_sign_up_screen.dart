import 'package:flutter/material.dart';
import 'package:imperio_mock/app/modules/auth/presenter/widgets/common_button.dart';
import 'package:imperio_mock/core/extensions/context_extensions.dart';
import 'package:imperio_mock/core/extensions/validation_extensions.dart';
import 'package:imperio_mock/core/res/colors.dart';

class EmailSignUpScreen extends StatefulWidget {
  const EmailSignUpScreen({super.key});

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
      body: Padding(
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
                  hintText: 'hint for now',
                ),
              ),
            ),
            Center(
              child: CommonButton(
                isThereIcon: false,
                onPressed: () {},
                label: 'Continuar',
                backgroundColor: AppColors.primaryColor,
                width: 296,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
