import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/custom_appbar.dart';

import 'empty_cart_container.dart';


class EmptyCartScreenBody extends StatelessWidget {
  const EmptyCartScreenBody({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50),
    child: Column(
      children: [
        const CustomAppBar(centerText: 'عربة التسوق'),
        SizedBox(height: context.actualHeight * 0.05),
        const EmptyCartContainer(),
      ],
    ),
  );
}

