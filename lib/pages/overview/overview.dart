import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_card_large.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_card_medium.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_card_small.dart';
import 'package:web_dashboard/widgets/available_drivers.dart';
import 'package:web_dashboard/widgets/custom_text.dart';
import 'package:web_dashboard/widgets/revenue_section_large.dart';
import 'package:web_dashboard/widgets/revenue_section_small.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin: EdgeInsets.only(top:
              ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(
                text: customMenuController.activeItem.value,
                size: 24,
                weight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        )),
        Expanded(
            child: ListView(
              children: [
                // OverviewCardsLargeSrceen()
                if(ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
                  if(ResponsiveWidget.isCustomSize(context))
                    OverviewCardsMediumScreen()
                  else
                    OverviewCardsLargeSrceen()
                   else
                     OverviewCardSmallScreen(),

                if(!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLarge()
                else
                  RevenueSectionSmall(),

                AvailableDrivers(),


              ],
            )
        )
      ],
    );
  }
}
