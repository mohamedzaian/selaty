import 'package:flutter/material.dart';
import 'package:selaty/feature/favorite/presentaiton/widgets/favorite_screen_body.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavoriteScreenBody(),
    );
  }
}
