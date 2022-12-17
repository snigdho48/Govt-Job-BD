import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gov_job_b_d/infrastructure/navigation/routes.dart';
import 'package:gov_job_b_d/infrastructure/theme/constant.color.dart';
import 'package:gov_job_b_d/presentation/shared/AppBar_actions.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Padding(
          padding: EdgeInsets.only(left: 8.0,right: 8,top: MediaQuery.of(context).size.height/25),
          child: Row(
            children: [
              _AppbarHeading(),
              Spacer(),
              AppBarActions(),
            ],
          ),
        ),
      ),
      floatingActionButton: _floatinButton(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          _SearchBox(),
          const SizedBox(
            height: 10,
          ),
          _HeaderSections(),
          _ContentSection(),
        ],
      ),
    );
  }
}

class _SearchBox extends GetView<StatelessWidget> {
  _SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDark = Get.isDarkMode;
    context.theme;
    TextEditingController search = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: isDark
                    ? const Color(0xFF011627)
                    : searchBar.withOpacity(.13)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextFormField(
                controller: search,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Here',
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color:
                            isDark ? Colors.white60 : darkBlue.withOpacity(1)),
                    icon: Icon(Icons.search,
                        size: 30,
                        color:
                            isDark ? Colors.white : darkBlue.withOpacity(1))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ContentSection extends StatelessWidget {
  _ContentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;
    final bool isDark = Get.isDarkMode;

    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
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
                          title: const Text(
                            'Hello This is Dummy Data for first time use and for tempotery',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                                                darkBlue.withOpacity(1),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Get.toNamed(Routes.CIRCULAR),
                child: Container(
                    constraints: const BoxConstraints(
                      minHeight: 120,
                      maxHeight: double.infinity,
                    ),
                    width: MediaQuery.of(context).size.width / 1.08,
                    decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10.0)),
                        color: isDark ? const Color(0xFF011627) : Colors.white),
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
                          title: const Text(
                            'Hello This is Dummy Data for first time use and for tempotery',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                                            darkBlue.withOpacity(1),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
                                                : btnBgLight)),
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
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  constraints: const BoxConstraints(
                    minHeight: 120,
                    maxHeight: double.infinity,
                  ),
                  width: MediaQuery.of(context).size.width / 1.08,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      color: isDark ? const Color(0xFF011627) : Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.only(top: 10, left: 15),
                        leading: SvgPicture.asset(
                          'images/dummy.svg',
                          height: 30,
                          width: 30,
                        ),
                        title: const Text(
                          'Hello This is Dummy Data for first time use and for tempotery',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          'Hello This is Dummy Data for first time use and for tempotery',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Wrap(
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
                                              darkBlue.withOpacity(1),
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
                                              : btnBgLight)),
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
                                  height: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderSections extends StatelessWidget {
  _HeaderSections({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDark = Get.isDarkMode;
    context.theme;
    String? postdate;
    String? deadline;

    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height / 7,
        maxHeight: double.infinity,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Govt',
                        style: TextStyle(fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          backgroundColor: darkBlue.withOpacity(1),
                          shape: const StadiumBorder())),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Non Govt',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.white)),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: darkBlue.withOpacity(1),
                            shape: const StadiumBorder())),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white)),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white)),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white)),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white)),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white)),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'data',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white)),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 7,
                    child: Text(
                      '203 Job Availble',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: isDark
                              ? Colors.white60
                              : const Color(0x00000).withOpacity(1)),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.595,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          'Post Date: ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: isDark
                                  ? Colors.white60
                                  : darkBlue.withOpacity(1)),
                        ),
                        DropdownButton(
                          alignment: Alignment.center,
                          value: postdate ?? dropdownDate[0],
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: isDark
                                  ? Colors.white
                                  : darkBlue.withOpacity(1)),
                          items: dropdownDate.map((String items) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : darkBlue.withOpacity(1)),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            postdate = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.65,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      // direction: Axis.vertical,
                      children: [
                        Text(
                          'Deadline: ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: isDark
                                  ? Colors.white60
                                  : darkBlue.withOpacity(1)),
                        ),
                        DropdownButton(
                          alignment: Alignment.center,
                          value: deadline ?? dropdownDate[0],
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: isDark
                                  ? Colors.white
                                  : darkBlue.withOpacity(1)),
                          items: dropdownDate.map((String items) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : darkBlue.withOpacity(1)),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            deadline = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppbarHeading extends StatelessWidget {
  _AppbarHeading({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    context.theme;
    final bool isDark = Get.isDarkMode;


    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 25,
        ),
        Icon(Icons.badge_rounded,
            color: isDark ? darkBlue.withOpacity(1) : Colors.black87),
        SizedBox(
          width: MediaQuery.of(context).size.width / 50,
        ),
        Text(
          'Govt Job',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isDark ? darkBlue.withOpacity(1) : Colors.black87),
        ),
        Text(
          'BD',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isDark ? darkBlue.withOpacity(.7) : Colors.black54),
        ),
      ],
    );
  }
}

class _floatinButton extends StatelessWidget {
  const _floatinButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: FloatingActionButton.extended(
        extendedPadding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), //<-- SEE HERE
        ),
        isExtended: true,
        elevation: 0,
        backgroundColor: darkBlue,
        onPressed: () {
          showCustomSearchDialog(context);
        },
        label: Text('Apply Here'),
        icon: Icon(Icons.search),
      ),
    );
  }
}

void showCustomSearchDialog(BuildContext context) {
  showGeneralDialog(
    barrierColor: Color(0x00ffffff),
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black54.withOpacity(0.5),
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: SvgPicture.asset(
                'images/Reply.svg',
                height: 80,
                width: 80,
                color: darkBlue,
              )),
        ),
        body: Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black54.withOpacity(0.5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                _SearchBox(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                        onPressed: () => Get.back(),
                        child: const Text(
                          'Back',
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: darkBlue.withOpacity(1),
                            shape: const StadiumBorder())),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                    ElevatedButton(
                        onPressed: () => Get.back(),
                        child: const Text(
                          'Search',
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: darkBlue.withOpacity(1),
                            shape: const StadiumBorder())),
                  ],
                )
              ],
            )),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: Offset(-2, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: Offset(2, 0), end: Offset.zero);
      }

      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}
