import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimelineTile extends StatelessWidget {
  const CustomTimelineTile(
      {super.key, required this.isFirst, required this.isLast, required this.isPast, required this.icon, required this.title, required this.subtitle});

  final bool isFirst;

  final bool isLast;

  final bool isPast;

  final IconData icon;

  final String title;

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 60,
        height: 60,
        indicator: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.black54, size: 35),
        ),
      ),
      afterLineStyle: const LineStyle(color: Colors.grey, thickness: 2),
      beforeLineStyle: const LineStyle(color: Colors.grey, thickness: 2),
      endChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBoldText(text: title, size: 20),
              const SizedBox(height: 4),
              CustomBoldText(
                  text: subtitle, size: 16, color: AppColors.greyColor),
            ],
          ),
        ),
      ),
    );
  }
}
