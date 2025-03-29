import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/core/utils/arrow_back.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/camera_button.dart';
import 'package:selaty/feature/auth/presentation/widgets/custom_appbar.dart';
import 'package:selaty/feature/cart/presentation/widgets/pay_button.dart';

import '../../../../core/utils/custom_bold_text.dart';
import 'cart_info_container.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({super.key});

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  List<Map<String, dynamic>> cartItems = [
    {"name": "كمثرى امريكي", "price": 35.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح احمر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "موز", "price": 25.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح اخضر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "كمثرى مصرى", "price": 20.00, "quantity": 1, "weight": "1 kg"},
  ];
  List<Map<String, dynamic>> cartItems2 = [
    {"name": "كمثرى امريكي", "price": 35.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح احمر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "موز", "price": 25.00, "quantity": 1, "weight": "1 kg"},
    {"name": "تفاح اخضر", "price": 40.00, "quantity": 2, "weight": "2 kg"},
    {"name": "كمثرى مصرى", "price": 20.00, "quantity": 1, "weight": "1 kg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomAppBar(
            leadingIcon: CameraButton(borderColor: Colors.white),
            actionIcon: ArrowBack(borderColor: Colors.white),
            centerText: 'عربة التسوق',
          ),
          SizedBox(height: context.actualHeight * 0.02),

          SizedBox(
            width: context.actualWidth,
            height: context.actualHeight * 0.35,
            child: ListView.separated(
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
                  child: Container(
                    height: context.getHeight * 0.15,
                    width:  context.isLandScape ? context.actualWidth * 0.4    : context.actualWidth,
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
                          SizedBox(width: context.actualWidth * 0.25),
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
                );
              },
              itemCount: cartItems2.length,
            ),
          ),
          SizedBox(height: context.actualHeight * 0.02),

          const CartInfoContainer(),
          SizedBox(height: context.actualHeight * 0.02),

          const PayButton()

        ],
      ),
    );
  }
}


