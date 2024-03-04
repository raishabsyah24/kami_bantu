import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kami_bantu/Config/app_assets.dart';
import 'package:kami_bantu/Config/app_colors.dart';
import 'package:kami_bantu/firebase/sign_in_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final sp = context.read<SignInProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 64, left: 16, right: 16),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("${sp.imageUrl}"),
                  backgroundColor: AppColors.biru,
                ),
                // ignore: deprecated_member_use
                DView.spaceWidth(47),
                Image(image: AssetImage(AppAssets.onboard_dua)),
                // ignore: deprecated_member_use
                DView.spaceWidth(47),
                Image(
                  image: AssetImage(AppAssets.onboard_dua),
                  height: 26.15,
                  width: 21.9,
                ),
                // ignore: deprecated_member_use
                DView.spaceHeight(16),
                Image(
                  image: AssetImage(AppAssets.onboard_dua),
                  height: 24,
                  width: 24,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 164,
                    width: 322,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.dasar,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            5.0, // Move to right 5  horizontally
                            5.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Attendance"),
                            Text("The 25 May"),
                            Text("10:15:00"),
                          ],
                        ),
                      ),
                      Text(
                        'Good Morning ${sp.name}, You Have Not\nCheck In yet. Have a good day',
                        style: GoogleFonts.roboto(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: 290,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.biru),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Check In / Out",
                            style: TextStyle(
                                color: AppColors.dasar,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            DView.spaceHeight(20),
            //   Padding(
            //     padding: EdgeInsets.all(10),
            //     child: Column(
            //       children: [
            //         SingleChildScrollView(
            //           child: Row(
            //             children: [
            //               Column(
            //                 children: [
            //                   ClipOval(
            //                     child: Material(
            //                       child: InkWell(
            //                         onTap: () {},
            //                         child: SizedBox(
            //                             width: 56,
            //                             height: 56,
            //                             child: Image.asset(AppAssets.leaves)),
            //                       ),
            //                     ),
            //                   ),
            //                   Text(
            //                     "Leaves",
            //                     style: GoogleFonts.roboto(fontSize: 14),
            //                   )
            //                 ],
            //               ),
            //               // ignore: deprecated_member_use
            //               DView.spaceWidth(23),
            //               Column(
            //                 children: [
            //                   ClipOval(
            //                     child: Material(
            //                       child: InkWell(
            //                         onTap: () {},
            //                         child: SizedBox(
            //                             width: 56,
            //                             height: 56,
            //                             child:
            //                                 Image.asset(AppAssets.attendance)),
            //                       ),
            //                     ),
            //                   ),
            //                   Text(
            //                     "Attendance",
            //                     style: GoogleFonts.roboto(fontSize: 12),
            //                   ),
            //                 ],
            //               ),
            //               // ignore: deprecated_member_use
            //               DView.spaceWidth(23),
            //               Column(
            //                 children: [
            //                   ClipOval(
            //                     child: Material(
            //                       child: InkWell(
            //                         onTap: () {},
            //                         child: SizedBox(
            //                             width: 56,
            //                             height: 56,
            //                             child: Image.asset(AppAssets.meeting)),
            //                       ),
            //                     ),
            //                   ),
            //                   Text(
            //                     "Meetings",
            //                     style: GoogleFonts.roboto(fontSize: 14),
            //                   )
            //                 ],
            //               ),
            //               // ignore: deprecated_member_use
            //               DView.spaceWidth(23),
            //               Column(
            //                 children: [
            //                   ClipOval(
            //                     child: Material(
            //                       child: InkWell(
            //                         onTap: () {},
            //                         child: SizedBox(
            //                             width: 56,
            //                             height: 56,
            //                             child: Image.asset(AppAssets.salary)),
            //                       ),
            //                     ),
            //                   ),
            //                   Text(
            //                     "Salary",
            //                     style: GoogleFonts.roboto(fontSize: 14),
            //                     textAlign: TextAlign.center,
            //                   )
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //         // ignore: deprecated_member_use
            //         DView.spaceHeight(24),
            //         Row(
            //           children: [
            //             Column(
            //               children: [
            //                 ClipOval(
            //                   child: Material(
            //                     child: InkWell(
            //                       onTap: () {},
            //                       child: SizedBox(
            //                           width: 56,
            //                           height: 56,
            //                           child: Image.asset(AppAssets.news)),
            //                     ),
            //                   ),
            //                 ),
            //                 Text(
            //                   "News\n   ",
            //                   style: GoogleFonts.roboto(fontSize: 14),
            //                   textAlign: TextAlign.center,
            //                 )
            //               ],
            //             ),
            //             // ignore: deprecated_member_use
            //             DView.spaceWidth(23),
            //             Column(
            //               children: [
            //                 ClipOval(
            //                   child: Material(
            //                     child: InkWell(
            //                       onTap: () {},
            //                       child: SizedBox(
            //                           width: 56,
            //                           height: 56,
            //                           child:
            //                               Image.asset(AppAssets.company_laws)),
            //                     ),
            //                   ),
            //                 ),
            //                 Text(
            //                   "Company\nLaws",
            //                   style: GoogleFonts.roboto(fontSize: 14),
            //                   textAlign: TextAlign.center,
            //                 )
            //               ],
            //             ),
            //             // ignore: deprecated_member_use
            //             DView.spaceWidth(23),
            //             Column(
            //               children: [
            //                 ClipOval(
            //                   child: Material(
            //                     child: InkWell(
            //                       onTap: () {},
            //                       child: SizedBox(
            //                           width: 56,
            //                           height: 56,
            //                           child: Image.asset(AppAssets.our_team)),
            //                     ),
            //                   ),
            //                 ),
            //                 Text(
            //                   "Our\nTeam",
            //                   style: GoogleFonts.roboto(fontSize: 14),
            //                   textAlign: TextAlign.center,
            //                 )
            //               ],
            //             ),
            //             // ignore: deprecated_member_use
            //             DView.spaceWidth(23),
            //             Column(
            //               children: [
            //                 ClipOval(
            //                   child: Material(
            //                     child: InkWell(
            //                       onTap: () {},
            //                       child: SizedBox(
            //                           width: 56,
            //                           height: 56,
            //                           child: Image.asset(AppAssets.asurance)),
            //                     ),
            //                   ),
            //                 ),
            //                 Text(
            //                   "Health\nInsurance",
            //                   style: GoogleFonts.roboto(fontSize: 14),
            //                   textAlign: TextAlign.center,
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //         DView.spaceHeight(10),
            //         Column(children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Ongoing task",
            //                 style: GoogleFonts.roboto(
            //                     fontSize: 18, fontWeight: FontWeight.w500),
            //               ),
            //             ],
            //           ),
            //           DView.spaceHeight(10),
            //           Container(
            //             height: 134,
            //             width: 337,
            //             decoration: BoxDecoration(
            //                 color: AppColors.light_blue.withOpacity(0.2),
            //                 borderRadius: BorderRadius.all(Radius.circular(8))),
            //             child: Padding(
            //               padding: const EdgeInsets.only(
            //                   left: 14, top: 10, right: 9.48),
            //               child: Column(
            //                 children: [
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "All About You (Website)",
            //                         style: GoogleFonts.roboto(
            //                             fontSize: 14,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                       Align(
            //                         alignment: Alignment.center,
            //                         child: Container(
            //                           height: 19,
            //                           decoration: BoxDecoration(
            //                               color: AppColors.inprogress
            //                                   .withOpacity(0.9),
            //                               borderRadius: BorderRadius.all(
            //                                   Radius.circular(4.76))),
            //                           margin: EdgeInsets.all(10),
            //                           child: Text(
            //                             "  Inprogress  ",
            //                             style: GoogleFonts.roboto(
            //                                 fontSize: 10,
            //                                 color: AppColors.dasar),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(0),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Client : Hanan Attia",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                         textAlign: TextAlign.start,
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(8),
            //                   Row(
            //                     children: [
            //                       Icon(Icons.calendar_month),
            //                       Text(
            //                         "Start: March 6, 2023 Deadline : June 6, 2023",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                       )
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           DView.spaceHeight(16),
            //           Container(
            //             height: 134,
            //             width: 337,
            //             decoration: BoxDecoration(
            //                 color: AppColors.light_blue.withOpacity(0.2),
            //                 borderRadius: BorderRadius.all(Radius.circular(8))),
            //             child: Padding(
            //               padding: const EdgeInsets.only(
            //                   left: 14, top: 10, right: 9.48),
            //               child: Column(
            //                 children: [
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "Insta Pets (App)",
            //                         style: GoogleFonts.roboto(
            //                             fontSize: 14,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                       Align(
            //                         alignment: Alignment.center,
            //                         child: Container(
            //                           height: 19,
            //                           decoration: BoxDecoration(
            //                               color: AppColors.finished
            //                                   .withOpacity(0.8),
            //                               borderRadius: BorderRadius.all(
            //                                   Radius.circular(4.76))),
            //                           margin: EdgeInsets.all(10),
            //                           child: Text(
            //                             "  Finished  ",
            //                             style: GoogleFonts.roboto(
            //                                 fontSize: 10,
            //                                 color: AppColors.dasar),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(0),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Client : Hanan Attia",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                         textAlign: TextAlign.start,
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(8),
            //                   Row(
            //                     children: [
            //                       Icon(Icons.calendar_month),
            //                       Text(
            //                         "Start: March 6, 2023 Deadline : June 6, 2023",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                       )
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           DView.spaceHeight(16),
            //           Container(
            //             height: 134,
            //             width: 337,
            //             decoration: BoxDecoration(
            //                 color: AppColors.light_blue.withOpacity(0.2),
            //                 borderRadius: BorderRadius.all(Radius.circular(8))),
            //             child: Padding(
            //               padding: const EdgeInsets.only(
            //                   left: 14, top: 10, right: 9.48),
            //               child: Column(
            //                 children: [
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "Innovatics Websites",
            //                         style: GoogleFonts.roboto(
            //                             fontSize: 14,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                       Align(
            //                         alignment: Alignment.center,
            //                         child: Container(
            //                           height: 19,
            //                           decoration: BoxDecoration(
            //                               color: AppColors.pending
            //                                   .withOpacity(0.8),
            //                               borderRadius: BorderRadius.all(
            //                                   Radius.circular(4.76))),
            //                           margin: EdgeInsets.all(10),
            //                           child: Text(
            //                             "  Pending  .",
            //                             style: GoogleFonts.roboto(
            //                                 fontSize: 10,
            //                                 color: AppColors.dasar),
            //                             textAlign: TextAlign.center,
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(0),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Client : Hanan Attia",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                         textAlign: TextAlign.start,
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(8),
            //                   Row(
            //                     children: [
            //                       Icon(Icons.calendar_month),
            //                       Text(
            //                         "Start: March 6, 2023 Deadline : June 6, 2023",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                       )
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           DView.spaceHeight(16),
            //           Container(
            //             height: 134,
            //             width: 337,
            //             decoration: BoxDecoration(
            //                 color: AppColors.light_blue.withOpacity(0.2),
            //                 borderRadius: BorderRadius.all(Radius.circular(8))),
            //             child: Padding(
            //               padding: const EdgeInsets.only(
            //                   left: 14, top: 10, right: 9.48),
            //               child: Column(
            //                 children: [
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "All About You (Website)",
            //                         style: GoogleFonts.roboto(
            //                             fontSize: 14,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                       Align(
            //                         alignment: Alignment.center,
            //                         child: Container(
            //                           height: 19,
            //                           decoration: BoxDecoration(
            //                               color: AppColors.inprogress
            //                                   .withOpacity(0.9),
            //                               borderRadius: BorderRadius.all(
            //                                   Radius.circular(4.76))),
            //                           margin: EdgeInsets.all(10),
            //                           child: Text(
            //                             "  Inprogress  ",
            //                             style: GoogleFonts.roboto(
            //                                 fontSize: 10,
            //                                 color: AppColors.dasar),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(0),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Client : Hanan Attia",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                         textAlign: TextAlign.start,
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(8),
            //                   Row(
            //                     children: [
            //                       Icon(Icons.calendar_month),
            //                       Text(
            //                         "Start: March 6, 2023 Deadline : June 6, 2023",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                       )
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           DView.spaceHeight(16),
            //           Container(
            //             height: 134,
            //             width: 337,
            //             decoration: BoxDecoration(
            //                 color: AppColors.light_blue.withOpacity(0.2),
            //                 borderRadius: BorderRadius.all(Radius.circular(8))),
            //             child: Padding(
            //               padding: const EdgeInsets.only(
            //                   left: 14, top: 10, right: 9.48),
            //               child: Column(
            //                 children: [
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "Insta Pets (App)",
            //                         style: GoogleFonts.roboto(
            //                             fontSize: 14,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                       Align(
            //                         alignment: Alignment.center,
            //                         child: Container(
            //                           height: 19,
            //                           decoration: BoxDecoration(
            //                               color: AppColors.finished
            //                                   .withOpacity(0.8),
            //                               borderRadius: BorderRadius.all(
            //                                   Radius.circular(4.76))),
            //                           margin: EdgeInsets.all(10),
            //                           child: Text(
            //                             "  Finished  ",
            //                             style: GoogleFonts.roboto(
            //                                 fontSize: 10,
            //                                 color: AppColors.dasar),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(0),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Client : Hanan Attia",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                         textAlign: TextAlign.start,
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(8),
            //                   Row(
            //                     children: [
            //                       Icon(Icons.calendar_month),
            //                       Text(
            //                         "Start: March 6, 2023 Deadline : June 6, 2023",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                       )
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           DView.spaceHeight(16),
            //           Container(
            //             height: 134,
            //             width: 337,
            //             decoration: BoxDecoration(
            //                 color: AppColors.light_blue.withOpacity(0.2),
            //                 borderRadius: BorderRadius.all(Radius.circular(8))),
            //             child: Padding(
            //               padding: const EdgeInsets.only(
            //                   left: 14, top: 10, right: 9.48),
            //               child: Column(
            //                 children: [
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "Innovatics Websites",
            //                         style: GoogleFonts.roboto(
            //                             fontSize: 14,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                       Align(
            //                         alignment: Alignment.center,
            //                         child: Container(
            //                           height: 19,
            //                           decoration: BoxDecoration(
            //                               color: AppColors.pending
            //                                   .withOpacity(0.8),
            //                               borderRadius: BorderRadius.all(
            //                                   Radius.circular(4.76))),
            //                           margin: EdgeInsets.all(10),
            //                           child: Text(
            //                             "  Pending  .",
            //                             style: GoogleFonts.roboto(
            //                                 fontSize: 10,
            //                                 color: AppColors.dasar),
            //                             textAlign: TextAlign.center,
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(0),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Client : Hanan Attia",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                         textAlign: TextAlign.start,
            //                       ),
            //                     ],
            //                   ),
            //                   // ignore: deprecated_member_use
            //                   DView.spaceHeight(8),
            //                   Row(
            //                     children: [
            //                       Icon(Icons.calendar_month),
            //                       Text(
            //                         "Start: March 6, 2023 Deadline : June 6, 2023",
            //                         style: GoogleFonts.roboto(fontSize: 10),
            //                       )
            //                     ],
            //                   ),
            //                   Row(
            //                     children: [],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //           DView.spaceHeight(16),
            //         ])
            //       ],
            //     ),
            //   ),
            // ],
          ]),
        ),
      ),
    );
  }
}
