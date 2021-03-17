import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bookings/app/modules/agent_new_listing/controllers/agent_new_listing_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_time_picker/date_time_picker.dart';

class AgentNewListingView extends GetView<AgentNewListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 80,
        title: Text(
          'New Listing',
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Color(0xff172434)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Center(
            child: Text("Cancel",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff696969))),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
                child: Text(
              'Done',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: Color(0xff1484D6)),
            )),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 38,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Image.asset("assets/images/pix.png"),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alice Yang",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  Text(
                    "Real Estate Agent",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff696969)),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: TabBar(
              tabs: controller.tabs,
              isScrollable: true,
              labelStyle: GoogleFonts.lato(
                fontWeight: FontWeight.bold,

                // color: Color(0xff1484D6),
                fontSize: 16,
              ),
              controller: controller.controller,
              labelColor: Color(0xff1484D6),
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              // indicatorColor: Color(0xff1484D6),
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 1.5, color: Color(0xff0071B2)),
                  insets: EdgeInsets.only(left: 0, right: 0, bottom: -8)),
              onTap: (index) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 29, right: 100),
            child: Container(
              // Negative padding

              transform: Matrix4.translationValues(0.0, 8, 0.0),
              // Add top border
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 0.6,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(controller: controller.controller, children: [
              Center(child: Text("Jn")),
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 18.76,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.lato(
                          color: Color(0xff696969),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          letterSpacing: 0.02),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 35,
                      width: 315,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: Color(0xffD1D1D1),
                              width: 1,
                              style: BorderStyle.solid)),
                      child: DateTimePicker(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon:
                                Image.asset("assets/images/datePicker.png")),
                        initialValue: '',
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2023),
                        dateLabelText: '',
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) => print(val),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Start Time",
                              style: GoogleFonts.lato(
                                  color: Color(0xff696969),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  letterSpacing: 0.02),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 35,
                              width: 151,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      color: Color(0xffD1D1D1),
                                      width: 1,
                                      style: BorderStyle.solid)),
                              child: DateTimePicker(
                                type: DateTimePickerType.time,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Image.asset(
                                        "assets/images/downArrow.png")),
                                initialValue: '',
                                firstDate: DateTime(2021),
                                lastDate: DateTime(2023),
                                dateLabelText: '',
                                onChanged: (val) => print(val),
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                                onSaved: (val) => print(val),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "End Time",
                              style: GoogleFonts.lato(
                                  color: Color(0xff696969),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  letterSpacing: 0.02),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 35,
                              width: 151,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      color: Color(0xffD1D1D1),
                                      width: 1,
                                      style: BorderStyle.solid)),
                              child: DateTimePicker(
                                type: DateTimePickerType.time,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    suffixIcon: Image.asset(
                                        "assets/images/downArrow.png")),
                                initialValue: '',
                                firstDate: DateTime(2021),
                                lastDate: DateTime(2023),
                                dateLabelText: '',
                                onChanged: (val) => print(val),
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                                onSaved: (val) => print(val),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      "Remove",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          color: Color(0xff1484D6),
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      "Add another date",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          color: Color(0xff1484D6),
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              Center(child: Text("Jn")),
            ]),
          )
        ],
      ),
    );
  }
}
