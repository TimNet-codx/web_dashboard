import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/medium_screen.dart';
import 'package:web_dashboard/widgets/side_menu.dart';
import 'package:web_dashboard/widgets/small_screen.dart';
import 'package:web_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  // const SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(child: SideMenu()),
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
