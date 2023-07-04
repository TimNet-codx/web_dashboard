const RootRoute ="/";

const OverViewPageDisplayName = "Overview";
const OverViewPageRoute = "/overView";

const DriversPageDisplayName = "Drivers";
const DriversPageRoute = "/drivers";

const ClientsPageDisplayName = "Clients";
const ClientsPageRoute = "/clients";

const AuthenticationPageDisplayName  = "Log Out";
const AuthenticationPageRoute = "/auth";

class MenuItem{
  final String name;
  final String route;

  MenuItem(this.name, this.route);


}


List<MenuItem> sideMenuItems =[
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(DriversPageDisplayName, DriversPageRoute),
  MenuItem(ClientsPageDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute)
];






// const OverViewPageRoute = "Overview";
// const DriversPageRoute = "Drivers";
// const ClientsPageRoute = "Clients";
// const AuthenticationPageRoute = "Authentication";
//
// List sideMenuItems =[
//   OverViewPageRoute,
//   DriversPageRoute,
//   ClientsPageRoute,
//   AuthenticationPageRoute
//];