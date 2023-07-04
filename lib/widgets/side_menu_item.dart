import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/widgets/horizontal_menu_item.dart';
import 'package:web_dashboard/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTop;

  const SideMenuItem({Key? key, required this.itemName, required this.onTop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   if(ResponsiveWidget.isCustomSize(context)) {
     return VerticalMenuItem(itemName: itemName, onTop: onTop);
   }else{
     return HorizontalMenuItem(itemName: itemName, onTop: onTop);
   }

  }
}
