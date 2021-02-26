import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget homeCard(
    {String header,
    String details,
    String type,
    String confirmed,
    String pending,
    cancelled}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
    child: Container(
      height: 187,
      width: 343,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xff9E9E9E),
              blurRadius: 4,
            )
          ],
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 17.73, bottom: 16, right: 24.86),
                  child: Container(
                    height: 96,
                    width: 100.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                            colors: [Color(0xffFFEBEB), Color(0xffFFD3D3)])),
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          height: 24,
                          width: 67,
                          decoration: BoxDecoration(
                              color: Color(0xff03A9F4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              type,
                              style: GoogleFonts.lato(
                                  fontSize: 11, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      header,
                      style: GoogleFonts.lato(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(details,
                        style: GoogleFonts.lato(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Confirmed",
                              style: GoogleFonts.lato(
                                  fontSize: 12, color: Color(0xff696969)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              confirmed,
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff292929)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              "Pending",
                              style: GoogleFonts.lato(
                                  fontSize: 12, color: Color(0xffFF9800)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              pending,
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF9800)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              "Cancelled",
                              style: GoogleFonts.lato(
                                  fontSize: 12, color: Color(0xff696969)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              cancelled,
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff292929)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffF0F0F0), style: BorderStyle.solid)),
            child: Center(
                child: Text(
              "See Details",
              style: GoogleFonts.lato(
                  color: Color(0xff696969),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    ),
  );
}
