import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/cart/presentation/widgets/cart_screen_body.dart';
import 'package:selaty/feature/cart/presentation/widgets/cart_screen_body_landscape.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:context.isLandScape ? const CartScreenBodyLandscape(): const SafeArea(child:  CartScreenBody()),
    );
  }
}
