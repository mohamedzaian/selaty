import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lazy_indexed_stack/flutter_lazy_indexed_stack.dart';
import 'package:selaty/core/utils/images.dart';
import 'package:selaty/feature/cart/presentation/view/cart_screen.dart';
import 'package:selaty/feature/favorite/presentaiton/view/favorite_screen.dart';
import 'package:selaty/feature/home/presentation/views/home_screen.dart';
import 'package:selaty/feature/search/presentation/views/search_screen.dart';

import '../../../notification/presentation/views/notification_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
List <Widget> screens = [
  const SearchScreen(),
  const FavoriteScreen(),
  const HomeScreen(),
  const NotificationScreen(),
  const CartScreen(),

];
class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 2 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: ConvexAppBar(
      style: TabStyle.fixedCircle,
      backgroundColor: Colors.white,
        items:   const [
    TabItem(icon: Icon(Icons.search ,size: 35) , ),
    TabItem(icon: Icon(Icons.favorite_border,size: 35) , ),
      TabItem(icon: CircleAvatar(
    radius: 35,
    backgroundColor: Color(0xff96A753),
    backgroundImage: AssetImage(AppImages.logo , ),
    ), ),
    TabItem(icon: Icon(Icons.notifications_none_outlined ,size: 35,), ),
    TabItem(icon: Icon(Icons.shopping_cart_outlined,size: 35), ),


    ],
      onTap: (int i )
      {
        setState(() {
          selectedIndex = i ;
        });
      },
    ),
    body: LazyIndexedStack(
    index: selectedIndex,
    children: screens,
    )





    );
  }
}


