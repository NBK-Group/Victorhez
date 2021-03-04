import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget homeCard(
    {String header,
    String details,
    String image,
    String type,
    String confirmed,
    String pending,
    cancelled}) {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 33),
    child: Container(
      height: 167,
      width: 343,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xff9E9E9E)
                    .withOpacity(0.3)
                    .withBlue(158)
                    .withGreen(158)
                    .withRed(158),
                blurRadius: 27.1828,
                offset: Offset(2, 3))
          ],
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17.73, right: 24.86),
                  child: Container(
                    height: 96,
                    width: 100.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                            colors: [Color(0xffFFEBEB), Color(0xffFFD3D3)])),
                    child: Stack(
                      children: [
                        Image.asset(image),
                        Padding(
                          padding: const EdgeInsets.only(top: 62, left: 20),
                          child: Container(
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
                          fontSize: 16, fontWeight: FontWeight.w700),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Container(
            height: 48,
            width: 384,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                border: Border.all(
                    width: 1,
                    color: Color(0xffF0F0F0),
                    style: BorderStyle.solid)),
            child: Padding(
                padding:
                    EdgeInsets.only(top: 14, bottom: 15, left: 132, right: 131),
                child: Text(
                  "See Details",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      color: Color(0xff696969),
                      letterSpacing: 0.5,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )),
          ),
        ],
      ),
    ),
  );
}
