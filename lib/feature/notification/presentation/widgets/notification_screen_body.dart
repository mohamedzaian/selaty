import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CustomBoldText(text: 'Notificatio Screen', size: 20),
    );
  }
}
