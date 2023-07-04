import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/clients/widgets/client_table.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

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
        )
        ),
        Expanded(
            child: ListView(
              children: [
                ClientsTable()
              ],
            )
        )
      ],
    );
  }
}
