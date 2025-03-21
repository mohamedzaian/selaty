import 'package:flutter/material.dart';

import 'custom_colume.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          CustomColumn(),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            strokeWidth: 5.0,

          )


        ],
      ),
    );
  }
}
