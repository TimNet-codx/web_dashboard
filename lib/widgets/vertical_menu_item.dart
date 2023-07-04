import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/style.dart';

import '../constants/controllers.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatefulWidget {
  final String itemName;
  final Function onTop;

  const VerticalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTop,
  }) : super(key: key);

  @override
  _VerticalMenuItemState createState() => _VerticalMenuItemState();
}

class _VerticalMenuItemState extends State<VerticalMenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTop(),
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
        if (value) {
          customMenuController.onHover(widget.itemName);
        } else {
          customMenuController.onHover("not hovering");
        }
      },
      child: Obx(
            () => Container(
          color: customMenuController.isHovering(widget.itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: customMenuController.isHovering(widget.itemName) ||
                    customMenuController.isActive(widget.itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(width: 3, height: 72, color: dark),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child:
                      customMenuController.returnIconFor(widget.itemName),
                    ),
                    if (!customMenuController.isActive(widget.itemName))
                      Flexible(
                        child: CustomText(
                          text: widget.itemName,
                          color: customMenuController.isHovering(widget.itemName)
                              ? dark
                              : lightGrey,
                          size: 16,
                          weight: FontWeight.normal,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: widget.itemName,
                          color: dark,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
