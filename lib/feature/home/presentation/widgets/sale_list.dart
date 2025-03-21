import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/utils/custom_bold_text.dart';
import '../../data/models/offer_model.dart' show OfferModel;

class SalesList extends StatelessWidget {
  const SalesList({
    super.key,
    required this.offers,
  });

  final List<OfferModel> offers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal:10.0),
      child: SizedBox(
        height: context.isLandScape ? context.getHeight * 0.4 : context.getWidth *.3,
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context , i)
            {
              return  SizedBox(width:context.isLandScape ? 30 :  10,);
            },
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context , i )
            {
              return Container(
                height: context.actualWidth * 0.3,
                width: context.isLandScape ?  context.actualWidth * 0.28 :context.actualWidth * 0.3 ,

                decoration: BoxDecoration(
                    color: offers[i].color,
                    borderRadius: BorderRadius.circular(12)

                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBoldText(text: offers[i].offer , size: 20 , color : Colors.white),
                    CustomBoldText(text: offers[i].percent, size: 30),
                    CustomBoldText(text: offers[i].sale, size: 18 ,color: Colors.white,),

                  ],
                ),


              );
            }),
      ),
    );
  }
}
