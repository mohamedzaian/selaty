import 'package:flutter/material.dart';
import 'package:selaty/feature/cart/presentation/widgets/empty_cart_screen_body.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmptyCartScreenBody(),
    );
  }
}
