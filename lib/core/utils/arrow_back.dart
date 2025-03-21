import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    super.key, this.borderColor,
  });
final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(
              color:borderColor ?? Colors.grey
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white
      ),
      child: Center(
        child: IconButton(onPressed: ()
        {
          Navigator.of(context).pop();

        }, icon: const Icon(Icons.arrow_forward_ios_sharp, size: 25,)  ),
      ),
    );
  }
}
