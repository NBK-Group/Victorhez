import 'package:bookings/app/modules/home/views/card.dart';
import 'package:bookings/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bookings/app/modules/home/controllers/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
                        onTap: ()=>Get.toNamed(Routes.AGENT_NEW_LISTING),
                        child: Image.asset("assets/images/arrow_back.png")),
          title: Text(
            'Manage Bookings',
            style: GoogleFonts.lato(
                fontSize: 18,
                color: Color(0xff172434),
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                Center(
                  child: TabBar(
                    tabs: controller.tabs,
                    isScrollable: true,
                    controller: controller.controller,
                    labelColor: Color(0xff0071B2),
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Color(0xff0071B2),
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xff0071B2)),
                        insets: EdgeInsets.only(left: 0, right: 0, bottom: -5)),
                    onTap: (index) {},
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 89, right: 89),
              child: Container(
                // Negative padding

                transform: Matrix4.translationValues(0.0, -17, 0.0),
                // Add top border
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFFc3c3c3),
                      width: 0.6,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(12)),
                child: TextFormField(
                  controller: controller.searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Color(0xff200E32),
                      ),
                      suffixIcon: Icon(
                          Icons.filter_list_outlined,
                          color: Color(0xff696969),
                
                      ),
                      hintText: "Search",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff5E6272)),
                      labelStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff5E6272))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33, left: 24, bottom: 12),
              child: Text(
                "Properties Listed: 20",
                style: GoogleFonts.lato(
                    color: Color(0xff696969),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.2),
              ),
            ),
            Expanded(
              child: TabBarView(
                // physics: NeverScrollableScrollPhysics(),
                controller: controller.controller,
                children: [
                  ListView(
                    // shrinkWrap: true,
                    children: [
                      homeCard(
                          header: "8954 Eglington Avenue ",
                          details: "L7T 0T8, Toronto, ON",
                          type: "RENT",
                          confirmed: "11",
                          image: "assets/images/chia.png",
                          pending: "2",
                          cancelled: "5"),
                      homeCard(
                          header: "8954 Dundas St West",
                          details: "L5A 0B9, Mississauga, ON",
                          type: "SALE",
                          confirmed: "19",
                          image: "assets/images/dubai.png",
                          pending: "2",
                          cancelled: "5"),
                      homeCard(
                          header: "8954 Blood St",
                          details: "M5B 4Z3, Toronto, ON",
                          type: "SALE",
                          confirmed: "24",
                          image: "assets/images/russia.png",
                          pending: "2",
                          cancelled: "5")
                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      homeCard(
                          header: "8954 Eglington Avenue ",
                          details: "L7T 0T8, Toronto, ON",
                          image: "assets/images/chia.png",
                          type: "RENT",
                          confirmed: "11",
                          pending: "2",
                          cancelled: "5"),
                      homeCard(
                          header: "8954 Dundas St West",
                          details: "L5A 0B9, Mississauga, ON",
                          image: "assets/images/dubai.png",
                          type: "SALE",
                          confirmed: "19",
                          pending: "2",
                          cancelled: "5"),
                      homeCard(
                          header: "8954 Blood St",
                          details: "M5B 4Z3, Toronto, ON",
                          type: "SALE",
                          image: "assets/images/russia.png",
                          confirmed: "24",
                          pending: "2",
                          cancelled: "5")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}
