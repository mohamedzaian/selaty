import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/cart/presentation/widgets/cart_info_container.dart';
import 'package:selaty/feature/cart/presentation/widgets/pay_button.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/arrow_back.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../auth/presentation/widgets/camera_button.dart';
import '../../../auth/presentation/widgets/custom_appbar.dart';

class CartScreenBodyLandscape extends StatefulWidget {
  const CartScreenBodyLandscape({super.key});

  @override
  State<CartScreenBodyLandscape> createState() => _CartScreenBodyLandscapeState();
}

class _CartScreenBodyLandscapeState extends State<CartScreenBodyLandscape> {
  List<Map<String, dynamic>> cartItems2 = [
    {"name": "كمثرى امريكي", "price": 35.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح احمر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "موز", "price": 25.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح اخضر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "كمثرى مصرى", "price": 20.00, "quantity": 1, "weight": "1 kg"},
  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(

        children: [
          SizedBox(height: context.actualHeight * 0.08),

          const CustomAppBar(
            leadingIcon: CameraButton(borderColor: Colors.white),
            actionIcon: ArrowBack(borderColor: Colors.white),
            centerText: 'عربة التسوق',
          ),
          SizedBox(height: context.actualHeight * 0.01),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: context.actualWidth  * 0.42,
                height: context.actualHeight * 0.6,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  separatorBuilder: (context, i) {
                    return const SizedBox(height: 15);
                  },
                  itemBuilder: (context, i) {
                    final item = cartItems2.first;
                    return Dismissible(
                      key: Key(item["name"]),
                      direction: DismissDirection.startToEnd,
                      onDismissed: (direction) {},
                      background: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: AppColors.redColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: context.getHeight * 0.15,
                          width:   context.actualWidth * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                    ),
                                    CustomBoldText(
                                      text: item['quantity'].toString(),
                                      size: 16,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.minimize),
                                    ),
                                  ],
                                ),
                                SizedBox(width: context.actualWidth * 0.15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center ,
                                  children: [
                                    CustomBoldText(
                                      text: '${item['quantity'] }x ${item['price']}',
                                      size: 20,
                                      color: const Color(0xff39C185),
                                    ),
                                    CustomBoldText(text: item['name'], size: 20),
                                    CustomBoldText(text: item['weight'], size: 20),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: cartItems2.length,
                ),
              ),


              Column(
                children: [
                  const CartInfoContainer(),
                  SizedBox(height: context.actualHeight * 0.02),

                  const PayButton()
                ],
              ),



            ],

          ),


        ],

      ),
    );
  }
}
