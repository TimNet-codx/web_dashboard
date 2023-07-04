import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardSmallScreen extends StatelessWidget {
  const OverviewCardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
              title: "Rides", value: "7", onTop: () {}, isActive: true),
          SizedBox(height: _width/64,),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            onTop: (){},
            // isActive: false,
          ),
          SizedBox(height: _width/64,),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTop: (){},
            //isActive: false,
          ),
          SizedBox(height: _width/64,),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "3",
            onTop: (){},
            //isActive: false,
          ),
        ],
      ),
    );
  }
}
