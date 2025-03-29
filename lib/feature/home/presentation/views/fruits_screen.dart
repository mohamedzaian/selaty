import 'package:flutter/material.dart';
import 'package:selaty/feature/home/presentation/widgets/fruits_screen_body.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      body: FruitsScreenBody(),
    );
  }
}
