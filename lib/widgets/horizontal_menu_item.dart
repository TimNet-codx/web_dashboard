import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class HorizontalMenuItem extends StatefulWidget {
  final String itemName;
  final Function onTop;

  const HorizontalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTop,
  }) : super(key: key);

  @override
  _HorizontalMenuItemState createState() => _HorizontalMenuItemState();
}

class _HorizontalMenuItemState extends State<HorizontalMenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

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
      child: Container(
        color: isHovered
            ? lightGrey.withOpacity(.1)
            : Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: isHovered ||
                  customMenuController.isActive(widget.itemName),
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
              child: Container(width: 6, height: 40, color: dark),
            ),
            SizedBox(
              width: _width / 88,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: customMenuController.returnIconFor(widget.itemName),
            ),
            if (!customMenuController.isActive(widget.itemName))
              Flexible(
                child: CustomText(
                  text: widget.itemName,
                  color: isHovered ? dark : lightGrey,
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
    );
  }
}

