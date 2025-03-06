import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/password_text_field.dart';

import 'auth_row.dart';
import 'custom_appbar.dart';
import 'email_text_field.dart';
import 'login_button.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SizedBox(
          height: context.getHeight, // Full height
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.getWidth * 0.05, // 5% of screen width
              vertical: context.getHeight * 0.05, // 5% of screen height
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  SizedBox(height: context.getHeight * 0.08), // 2% of screen height
CreateAccountText(),
                  SizedBox(height: context.getHeight * 0.06), // 4% of screen height

                  EmailTextField(),
                  SizedBox(height: 10,),
                  PasswordTextField(),
                  SizedBox(height: context.getHeight * 0.07), // 3% of screen height

                  LoginButton(),
                  SizedBox(height: context.getHeight * 0.15), // 5% of screen height

                  AuthRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

