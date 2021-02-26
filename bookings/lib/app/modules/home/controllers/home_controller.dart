import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  //TODO: Implement HomeController
  TextEditingController searchController = TextEditingController();
  final count = 0.obs;
  TabController controller;
  RxBool searchVisibility = false.obs;
  RxBool searchButtonVisibility = true.obs;
  RxInt selectedIndex = 0.obs;
  List<Widget> tabs = [
    Text(
      "Listig Bookings",
      style: GoogleFonts.lato(fontSize: 16),
    ),
    Text(
      "My Bookings",
      style: GoogleFonts.lato(
        fontSize: 16,
      ),
    ),
    Text(
      "Timeline",
      style: GoogleFonts.lato(fontSize: 16),
    ),
  ];
  @override
  void onInit() {
    controller = TabController(length: tabs.length, vsync: this);
    controller.addListener(() {
      selectedIndex.value = controller.index;
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
