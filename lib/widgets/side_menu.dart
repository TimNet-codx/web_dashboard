import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/authentication/authentication.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';
import 'package:web_dashboard/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40,),
                Row(
                  children: [
                    SizedBox(width: _width / 48,),
                    Padding(padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png", width: 28,),
                    ),
                    Flexible(
                        child: CustomText(
                          text: "Dash",
                          size: 20,
                          weight: FontWeight.bold,
                          color: active,
                        )),
                    SizedBox(width: _width / 48,),
                  ],
                ),
              ],

            ),
          Divider(color: lightGrey.withOpacity(.1),),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((item) => SideMenuItem(
              // itemName: itemName == AuthenticationPageRoute ? "Log Out" : itemName,
              itemName: item.name,
              onTop: (){
                if(item.route == AuthenticationPageRoute){
                  //TODO:: go to authentication page
                  //Get.offAll(()=> AuthenticationPage());
                  customMenuController.changeActiveItemTo(OverViewPageDisplayName);
                  Get.offAllNamed(AuthenticationPageRoute);
                }

                if(!customMenuController.isActive(item.name)){
                  customMenuController.changeActiveItemTo(item.name);
                  Get.back();
                  navigationController.navigateTo(item.route);
                  if(ResponsiveWidget.isSmallScreen(context)) {
                    Get.back();
                    //TODO:: go to item name Route
                    //to do go to item name Route
                    navigationController.navigateTo(item.route);
                  }
                }
              },
            )).toList(),
          )
        ],
      ),
    );
  }
}
