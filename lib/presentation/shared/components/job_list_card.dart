import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/navigation/routes.dart';
import '../../../infrastructure/theme/constant.color.dart';

class JobListCard extends StatelessWidget {
  const JobListCard({
    Key? key,
    required this.isDark,
  }) : super(key: key);

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.CIRCULAR),
      child: Container(
          constraints: BoxConstraints(
            minHeight: 120,
            maxHeight: double.infinity,
          ),
          width: MediaQuery.of(context).size.width / 1.08,
          decoration: BoxDecoration(
              borderRadius:
              const BorderRadius.all(Radius.circular(10.0)),
              color: isDark ? Color(0xFF011627) : Colors.white),
          child: Column(
            children: [
              ListTile(
                contentPadding:
                const EdgeInsets.only(top: 10, left: 15),
                leading: SvgPicture.asset(
                  'images/dummy.svg',
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'মাধ্যমিক ও উচ্চ শিক্ষা অধিদপ্তর নিয়োগ বিজ্ঞপ্তি ২০২২ অর্থ বছরের',
                  style: GoogleFonts.getFont('Baloo Da 2', fontSize: 14, fontWeight: FontWeight.w700, height: 1.2),
                ),
                subtitle: const Text(
                  'Hello This is Dummy Data for first time use and for tempotery',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 5),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Wrap(
                        runSpacing: 5,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Govt',
                                style: TextStyle(fontSize: 15),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  backgroundColor:
                                  MyColors.darkBlue.withOpacity(1),
                                  shape: const StadiumBorder())),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'data',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isDark
                                        ? Colors.white70
                                        : Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  shape: const StadiumBorder(),
                                  backgroundColor: isDark
                                      ? Colors.black
                                      : MyColors.btnBgLight)),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'data',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isDark
                                        ? Colors.white70
                                        : Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  shape: const StadiumBorder(),
                                  backgroundColor: isDark
                                      ? Colors.black
                                      : MyColors.btnBgLight)),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'data',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isDark
                                        ? Colors.white70
                                        : Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  shape: const StadiumBorder(),
                                  backgroundColor: isDark
                                      ? Colors.black
                                      : MyColors.btnBgLight)),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'data',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isDark
                                        ? Colors.white70
                                        : Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  shape: const StadiumBorder(),
                                  backgroundColor: isDark
                                      ? Colors.black
                                      : MyColors.btnBgLight)),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'data',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isDark
                                        ? Colors.white70
                                        : Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  shape: const StadiumBorder(),
                                  backgroundColor: isDark
                                      ? Colors.black
                                      : MyColors.btnBgLight)),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'data',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isDark
                                        ? Colors.white70
                                        : Colors.black54),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                  shape: const StadiumBorder(),
                                  backgroundColor: isDark
                                      ? Colors.black
                                      : MyColors.btnBgLight)),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Free Post :200'),
                        SizedBox(
                          width: 8,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
