import 'package:get/get.dart';

import 'package:bookings/app/modules/agent_new_listing/controllers/agent_new_listing_controller.dart';

class AgentNewListingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentNewListingController>(
      () => AgentNewListingController(),
    );
  }
}
