import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/cart/presentation/widgets/address_screen_body.dart';
import 'package:selaty/feature/cart/presentation/widgets/address_screen_landscape_body.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: context.isLandScape ? const AddressScreenLandscapeBody() : const AddressScreenBody(),
    );
  }
}
