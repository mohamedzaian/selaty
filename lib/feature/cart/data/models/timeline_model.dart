import 'package:flutter/cupertino.dart';

class TimeLineModel
{
  final IconData icon ;
  final String title ;
  final String subtitle ;
  final bool isFirst;
  final bool isLast;
  final bool isPast;

  TimeLineModel({required this.icon, required this.title, required this.subtitle, required this.isFirst, required this.isLast, required this.isPast});

}