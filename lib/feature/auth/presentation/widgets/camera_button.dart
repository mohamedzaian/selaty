import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({
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

        }, icon: Icon(Icons.camera_alt_outlined, size: 25,)  ),
      ),
    );
  }
}
