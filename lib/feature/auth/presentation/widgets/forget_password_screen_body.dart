import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/custom_button.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/views/otp_screen.dart';
import 'package:selaty/feature/auth/presentation/widgets/custom_appbar.dart';
import 'package:selaty/feature/auth/presentation/widgets/phone_field.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.getWidth * 0.1,
            ),
            CustomAppBar(
        
              leadingIcon:
        IconButton(onPressed: ()
        {
          Navigator.of(context).pop();

        }, icon: Icon(Icons.arrow_forward_ios))
              ,
              actionIcon: Row(
                mainAxisAlignment: MainAxisAlignment.start,
               children: [IconButton(onPressed: ()
                   {
                   }
                   , icon: Icon(Icons.camera_alt_outlined)),
                 CustomBoldText(text: 'تحقق من رقم الهاتف', size: 17, color: AppColors.greyColor,),
                 
        
               ],
              ),
            ),
             Container(
               width: context.getWidth * .8,
                 child: CustomBoldText(text: 'لقد ارسلنا لك رسالة نصية قصيرة تحتوي علي رمز ال الرقم', size: 15,color: Colors.grey,)),
            SizedBox(
              height: context.getWidth * 0.2,
            ),
        PhoneField(),
            SizedBox(
              height: context.getWidth * 0.08,
            ),
            CustomButton(text: 'تاكيد', textSize: 17 , color: AppColors.greenColor,
            onPressed: ()
              {
Get.to(()=> OtpScreen(), transition: Transition.leftToRightWithFade);             },)
        
        
          ],
        ),
      ),
    );
  }
}

