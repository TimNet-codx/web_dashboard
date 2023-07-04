import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/authentication/authentication.dart';
import 'package:web_dashboard/pages/clients/clients.dart';
import 'package:web_dashboard/pages/drivers/drivers.dart';
import 'package:web_dashboard/pages/overview/overview.dart';
import 'package:web_dashboard/routing/routes.dart';


Route<dynamic> generateRoute(RouteSettings settings){
   switch(settings.name){
     case OverViewPageRoute:
       return _getPageRoute(OverViewPage());
     case DriversPageRoute:
       return _getPageRoute(DriverPage());
     case ClientsPageRoute:
       return _getPageRoute(ClientPage());
     // case AuthenticationPageRoute:
     //   return _getPageRoute(AuthenticationPage());
     default:
       return _getPageRoute(OverViewPage());
   }
}
PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}
