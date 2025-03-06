import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white
      ),
      child: Center(
        child: IconButton(onPressed: ()
        {
          Navigator.of(context).pop();

        }, icon: Icon(Icons.arrow_forward_ios_sharp, size: 25,)  ),
      ),
    );
  }
}
