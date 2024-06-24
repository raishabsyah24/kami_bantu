import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kami_bantu/config/appColors.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 19, top: 30, right: 19),
        child: Column(
          children: [
            Container(
              height: 134,
              width: 337,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 10, right: 9.48),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All About You (Website)",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 19,
                            decoration: BoxDecoration(
                                color: AppColors.grey.withOpacity(0.9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.76))),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "  Inprogress  ",
                              style: GoogleFonts.roboto(
                                  fontSize: 10, color: AppColors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Client : Hanan Attia",
                          style: GoogleFonts.roboto(fontSize: 10),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(8),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(
                          "Start: March 6, 2023 Deadline : June 6, 2023",
                          style: GoogleFonts.roboto(fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(16),
            Container(
              height: 134,
              width: 337,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 10, right: 9.48),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Insta Pets (App)",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 19,
                            decoration: BoxDecoration(
                                color: AppColors.grey.withOpacity(0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.76))),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "  grey  ",
                              style: GoogleFonts.roboto(
                                  fontSize: 10, color: AppColors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Client : Hanan Attia",
                          style: GoogleFonts.roboto(fontSize: 10),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(8),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(
                          "Start: March 6, 2023 Deadline : June 6, 2023",
                          style: GoogleFonts.roboto(fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(16),
            Container(
              height: 134,
              width: 337,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 10, right: 9.48),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Innovatics Websites",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 19,
                            decoration: BoxDecoration(
                                color: AppColors.grey.withOpacity(0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.76))),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "  grey  .",
                              style: GoogleFonts.roboto(
                                  fontSize: 10, color: AppColors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Client : Hanan Attia",
                          style: GoogleFonts.roboto(fontSize: 10),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(8),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(
                          "Start: March 6, 2023 Deadline : June 6, 2023",
                          style: GoogleFonts.roboto(fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(16),
            Container(
              height: 134,
              width: 337,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 10, right: 9.48),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All About You (Website)",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 19,
                            decoration: BoxDecoration(
                                color: AppColors.grey.withOpacity(0.9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.76))),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "  Inprogress  ",
                              style: GoogleFonts.roboto(
                                  fontSize: 10, color: AppColors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Client : Hanan Attia",
                          style: GoogleFonts.roboto(fontSize: 10),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(8),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(
                          "Start: March 6, 2023 Deadline : June 6, 2023",
                          style: GoogleFonts.roboto(fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(16),
            Container(
              height: 134,
              width: 337,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 10, right: 9.48),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Insta Pets (App)",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 19,
                            decoration: BoxDecoration(
                                color: AppColors.grey.withOpacity(0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.76))),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "  grey  ",
                              style: GoogleFonts.roboto(
                                  fontSize: 10, color: AppColors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Client : Hanan Attia",
                          style: GoogleFonts.roboto(fontSize: 10),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(8),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(
                          "Start: March 6, 2023 Deadline : June 6, 2023",
                          style: GoogleFonts.roboto(fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(16),
            Container(
              height: 134,
              width: 337,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 10, right: 9.48),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Innovatics Websites",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 19,
                            decoration: BoxDecoration(
                                color: AppColors.grey.withOpacity(0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.76))),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "  grey  .",
                              style: GoogleFonts.roboto(
                                  fontSize: 10, color: AppColors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Client : Hanan Attia",
                          style: GoogleFonts.roboto(fontSize: 10),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    DView.spaceHeight(8),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(
                          "Start: March 6, 2023 Deadline : June 6, 2023",
                          style: GoogleFonts.roboto(fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(16),
          ],
        ),
      ),
    ));
  }
}
