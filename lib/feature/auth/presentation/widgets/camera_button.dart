import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({
    super.key, this.borderColor, this.height, this.width,
  });
  final Color? borderColor ;
  final double? height ;
  final double? width ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height??  45,
      height: width ?? 45,
      decoration: BoxDecoration(
          border: Border.all(
              color: borderColor ?? Colors.grey
          ),
          borderRadius: BorderRadius.circular(12),
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
