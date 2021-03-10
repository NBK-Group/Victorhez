import 'package:bookings/app/modules/agent_new_listing/views/agent_new_listing_view.dart';
import 'package:bookings/app/modules/agent_new_listing/bindings/agent_new_listing_binding.dart';
import 'package:bookings/app/modules/home/views/home_view.dart';
import 'package:bookings/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.AGENT_NEW_LISTING, 
      page:()=> AgentNewListingView(), 
      binding: AgentNewListingBinding(),
    ),
  ];
}