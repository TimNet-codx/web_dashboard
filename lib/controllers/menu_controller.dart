import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/routing/routes.dart';

class CustomMenuController extends GetxController{
  static CustomMenuController instance = Get.find();
  var activeItem = OverViewPageDisplayName.obs;
  var hoverItem = "".obs;


  // To change the active menu name
  changeActiveItemTo(String itemName){
    activeItem.value = itemName;
  }

  // To change the name of the menu hover
  onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  // isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName){
   switch (itemName){
     case OverViewPageDisplayName:
       return _customIcon(Icons.trending_up, itemName);
     case DriversPageDisplayName:
       return _customIcon(Icons.drive_eta, itemName);
     case ClientsPageDisplayName:
       return _customIcon(Icons.people_alt_outlined, itemName);
     case AuthenticationPageDisplayName:
       return _customIcon(Icons.exit_to_app, itemName);
     default:
       return _customIcon(Icons.exit_to_app, itemName);
   }
  }

  Widget _customIcon(IconData icon, String itemName){
      if(isActive(itemName)) return Icon(icon, size: 22, color: dark,);

      return Icon(icon, color: isHovering(itemName) ? dark : lightGrey,);
  }
}