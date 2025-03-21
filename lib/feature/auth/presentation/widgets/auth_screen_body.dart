import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_box_decoration.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/logo.dart';
import 'package:selaty/feature/auth/presentation/widgets/sign_in_button.dart';
import 'package:selaty/feature/auth/presentation/widgets/sign_up_button.dart';


class AuthScreenBody extends StatelessWidget {
  const AuthScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: boxDecoration,
      child: FractionallySizedBox(
        heightFactor: context.isLandScape ? .8:  0.5,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            spacing: 20,
            children: [
              Logo(),
              SignInButton(),
          SignUpButton(),
            ],

          ),
        ),
      ),
    );
  }
}




