import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gov_job_b_d/infrastructure/navigation/routes.dart';
import 'package:gov_job_b_d/infrastructure/theme/constant.color.dart';
import 'package:gov_job_b_d/presentation/shared/appBar_actions.dart';
import '../shared/components/job_list_card.dart';
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
      floatingActionButton: _FloatinButton(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          _SearchBox(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(child: _HeaderSections()),
          SliverToBoxAdapter(child: _ContentSection()),
        ],
      ),
    );
  }
}

class _SearchBox extends GetView<StatelessWidget> {
  TextEditingController search = TextEditingController();
  _SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDark = Get.isDarkMode;
    context.theme;
    return SliverAppBar(
      backgroundColor: isDark ? MyColors.darkBlue : Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      floating: true,
      title: Container(
        height: 50,
        decoration: BoxDecoration(
          color: isDark ? MyColors.darkBlue : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: TextField(
          controller: search,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: isDark ? Colors.white : Colors.black54,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: isDark ? Colors.white : Colors.black54,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
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
                    : MyColors.searchBar.withOpacity(.13)),
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
                            isDark ? Colors.white60 : MyColors.darkBlue.withOpacity(1)),
                    icon: Icon(Icons.search,
                        size: 30,
                        color:
                            isDark ? Colors.white : MyColors.darkBlue.withOpacity(1))),
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
              JobListCard(isDark: isDark),
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
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  SizedBox(
                    width: 80,
                    height: 24,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'সরকারি',
                          style: TextStyle(fontSize: 10),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: MyColors.darkBlue.withOpacity(1),
                            shape: const StadiumBorder())),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    height: 24,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'বেসরকারি',
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 4,
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
                          'সবগুলো',
                          style: TextStyle(fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: MyColors.darkBlue.withOpacity(1),
                            shape: const StadiumBorder())),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'ডিফেন্স',
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
                          'ইঞ্জিনিয়ারিং',
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
                          'মন্ত্রণালয়',
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
                          'সরকারি কর্মকর্তা',
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
                          'শিক্ষা অধিদপ্তর',
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
                          'পরিসংখ্যান অধিদপ্তর',
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
            Text(
              '২৩৪ টি নিয়োগ পোস্ট পাওয়া গেছে',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: isDark
                      ? Colors.white60
                      : const Color(0x00000).withOpacity(1)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.595,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          'পোস্টিং ডেট',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: isDark
                                  ? Colors.white60
                                  : MyColors.darkBlue.withOpacity(1)),
                        ),
                        DropdownButton(
                          alignment: Alignment.center,
                          value: postdate ?? dropdownDate[0],
                          style: const TextStyle(fontSize: 12),
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: isDark
                                  ? Colors.white
                                  : MyColors.darkBlue.withOpacity(1)),
                          items: dropdownDate.map((String items) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : MyColors.darkBlue.withOpacity(1)),
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
                          'ডেডলাইন',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: isDark
                                  ? Colors.white60
                                  : MyColors.darkBlue.withOpacity(1)),
                        ),
                        DropdownButton(
                          alignment: Alignment.center,
                          value: deadline ?? dropdownDate[0],
                          style: const TextStyle(fontSize: 12),
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: isDark
                                  ? Colors.white
                                  : MyColors.darkBlue.withOpacity(1)),
                          items: dropdownDate.map((String items) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : MyColors.darkBlue.withOpacity(1)),
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
            color: isDark ? MyColors.darkBlue.withOpacity(1) : Colors.black87),
        SizedBox(
          width: MediaQuery.of(context).size.width / 50,
        ),
        Text(
          'Govt Job',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isDark ? MyColors.darkBlue.withOpacity(1) : Colors.black87),
        ),
        Text(
          'BD',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isDark ? MyColors.darkBlue.withOpacity(.7) : Colors.black54),
        ),
      ],
    );
  }
}

class _FloatinButton extends StatelessWidget {
  const _FloatinButton({
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
        backgroundColor: MyColors.darkBlue,
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
                color: MyColors.darkBlue,
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
                            backgroundColor: MyColors.darkBlue.withOpacity(1),
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
                            backgroundColor: MyColors.darkBlue.withOpacity(1),
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
