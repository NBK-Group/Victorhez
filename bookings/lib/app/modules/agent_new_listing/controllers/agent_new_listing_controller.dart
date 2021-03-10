import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AgentNewListingController extends GetxController
    with SingleGetTickerProviderMixin {
  //TODO: Implement AgentNewListingController
  TabController controller;
  RxInt selectedIndex = 0.obs;
  final count = 0.obs;
  List<Widget> tabs = [
    Text(
      "Details",
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        // color: Color(0xff1484D6),
        fontSize: 16),
    ),
    Text(
      "Open House",
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        // color: Color(0xff1484D6),
        fontSize: 16,
      ),
    ),Text(
      "Booking",
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        // color: Color(0xff1484D6),
        fontSize: 16,
      ),
    )
  ];
  @override
  void onInit() {
    super.onInit();
    controller = TabController(length: tabs.length, vsync: this);
    controller.addListener(() {
      selectedIndex.value = controller.index;
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;
}
