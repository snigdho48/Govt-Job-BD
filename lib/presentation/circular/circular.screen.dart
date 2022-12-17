import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gov_job_b_d/infrastructure/theme/constant.color.dart';
import 'package:gov_job_b_d/presentation/shared/AppBar_actions.dart';
import 'package:photo_view/photo_view.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/circular.controller.dart';

class CircularScreen extends GetView<CircularController> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Get.isDarkMode;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () => Get.offNamed(Routes.HOME),
          child: SvgPicture.asset(
            'images/Reply.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: [AppBarActions()],
      ),
      floatingActionButton: _floatinButton(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          _PageHeading(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _Deadlinevaccency(),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Vacenncy Details:',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  _vaccencyFirstRow(),
                  SizedBox(
                    height: 20,
                  ),
                  _vaccencySecondRow(),
                  SizedBox(
                    height: 20,
                  ),
                  _vaccencyThirdRow(),
                  _jobDeatisSection(),
                  _viewImage()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _viewImage extends StatelessWidget {
  const _viewImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showCustomDialog(context, 'images/job.png');
      },
      child: Container(
        color: Colors.white,
        child: Image.asset(
          'images/job.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class _jobDeatisSection extends StatelessWidget {
  _jobDeatisSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Job Description',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Get.isDarkMode ? const Color(0xFF011627) : Colors.white),
          padding: EdgeInsets.all(25),
          child: const Text("""
বাংলাদেশ সেনাবাহিনীতে পুরুষ ও মহিলা সৈনিক পদে নিয়োগ দেয়া হবে, ২০২৩ সালে নির্ধারিত সেনানিবাসে সৈনিক পদে প্রার্থী ভর্তি কার্যক্রম অনুষ্ঠিত হবে। বিস্তারিত বিজ্ঞাপনে দেখুন।
আবেদনের সময়সীমা: এসএমএস ও অনলাইন এর মাধ্যমে আবেদন শুরু হবে ১০ ডিসেম্বর ২০২২ তারিখ এবং শেষ হবে ৩১ জানুয়ারি ২০২৩ তারিখে।

আবেদন পক্রিয়া: প্রার্থীকে টেলিটক সিমের মাধ্যমে এসএমএস পাঠিয়ে আবেদন করতে হবে। নিচে বিস্তারিত আলোচনা করা হল।
সাধারণ (জিডি) প্রার্থীদের ক্ষেত্রে নিম্নবর্ণিতভাবে টাইপ করে প্রথম এসএমএস প্রেরণ করতে হবে।
প্রথম এসএমএস: SAINIK<space>1ST THREE LETTERS OF SSC BOARD<space>ROLL<space>PASSING YEAR <space> DISTRICT CODE
উদাহরণ: SAINIK DHA 236098 2018 34 (ঢাকা বোর্ডের জন্য DHA, কারিগরী বোর্ডের জন্য TEC, উন্মুক্ত বিশ্ববিদ্যালয়ের জন্য BOU ইত্যাদি, এছাড়াও স্ব স্ব জেলার সামনে নিম্নবর্ণিত জেলা কোড অনুযায়ী)।
বিএনসিসি (BNCC) প্রার্থীদের ক্ষেত্রে নিম্নবর্ণিতভাবে টাইপ করে প্রথম এসএমএস প্রেরণ করতে হবে।
প্রথম এসএমএস: SAINIK<space>1ST THREE LETTERS OF SSC BOARD <space> ROLL <space> PASSING YEAR <space> DISTRICT CODE <space>BNCC

উদাহরণঃ SAINIK DHA 236098 2018 34 BNCC (ঢাকা বোর্ডের জন্য DHA, কারিগরী বোর্ডের জন্য TEC, উন্মুক্ত বিশ্ববিদ্যালয়ের জন্য BOU ইত্যাদি, এছাড়াও স্ব স্ব জেলার সামনে নিম্নবর্ণিত জেলা কোড অনুযায়ী)।
সেনাসন্তান (SS) প্রার্থীদের ক্ষেত্রে নিম্নবর্ণিতভাবে টাইপ করে প্রথম এসএমএস প্রেরণ করতে হবে।
প্রথম এসএমএস: SAINIK<space>1ST THREE LETTERS OF SSC BOARD <space> ROLL <space> PASSING YEAR <space> DISTRICT CODE <space>SS
উদাহরণ: SAINIK DHA 236098 2018 34 SS (ঢাকা বাের্ডের জন্য DHA, কারিগরী বোর্ডের জন্য TEC, উক্ত বিশ্ববিদ্যালয়ের জন্য BOU ইত্যাদি, এছাড়াও স্ব স্ব জেলার সামনে নিম্নবর্ণিত জেলা কোড় অনুযায়ী)।
টিটিটিআই (TTTI) হতে প্রশিক্ষণ প্রাপ্ত প্রার্থীদের ক্ষেত্রে নিম্নবর্ণিতভাবে টাইপ করে প্রথম এসএমএস প্রেরণ করতে হবে।
প্রথম এসএমএস: SAINIK<space>1ST THREE LETTERS OF SSC BOARD <space> ROLL <space> PASSING YEAR <space> DISTRICT CODE <space>TTTI
উদাহরণঃ SAINIK DHA 236098 2018 34 TTT (ঢাকা বোর্ডের জন্য DHA, কারিগরী বোর্ডের জন্য TEC, উন্মুক্ত বিশ্ববিদ্যালয়ের জন্য BOU ইত্যাদি, এছাড়াও স্ব স্ব জেলার সামনে নিম্নবর্ণিত জেলা কোড অনুযায়ী)।


টেকনিক্যাল ট্রেডের (TT) প্রার্থীদের ক্ষেত্রে নিম্নবর্ণিতভাবে টাইপ করে প্রথম এসএমএস প্রেরণ করতে হবে (শুধুমাত্র পুরুষ প্রার্থী)। উল্লেখ্য, টেকনিক্যাল ট্রেড (IT) এ ভর্তি ইচ্ছুক প্রার্থীদের ভর্তি পরীক্ষা টেবিল-১ অনুযায়ী হবে, এই ক্ষেত্রে প্রার্থী যে কেন্দ্রে পরীক্ষা দিতে ইচ্ছুক সেই কেন্দ্রের সেন্টার কোড় এবং প্রার্থী যে ট্রেডএ ভর্তি হতে ইচ্ছুক টেবিল-১ অনুযায়ী সেই ট্রেজ এর কোড এসএমএস’এ দিতে হবে।
প্রথম এসএমএস: SAINIK<space>1ST THREE LETTERS OF SSC BOARD <space> ROLL <space> PASSING YEAR <space> DISTRICT CODE <space>TT<space> EXAM CENTER CODE<space> TRADE CODE
উদাহরণঃ SAINIK DHA 236098 2018 34 IT 111 DVR (ঢাকা বোর্ডের জন্য DHA, কারিগরী বোর্ডের জন্য TEC, উন্মুক্ত বিশ্ববিদ্যালয়ের জন্য BOU ইত্যাদি, এছাড়াও স্ব স্ব জেলার সামনে নিম্নবর্ণিত জেলা কোড অনুযায়ী)।
এসএমএস প্রেরণকৃত প্রার্থী যোগ্য হলে তাকে একটি পিন নাম্বার এসএমএসের মাধ্যমে প্রেরণ করা হবে। এই পিন নাম্বার দিয়ে পুণরায় প্রার্থীকে এসএমএস পাঠাতে হবে। এবার এসএমএস করার সময় ২০০ টাকা কাটা হবে। ২য় এসএমএস যেভাবে করবেন:
২য় এসএমএস: SAINIK<space>YES<space>PIN NUMBER<space>প্রার্থীর মোবাইল নাম্বার. লিখে পাঠাতে হবে ১৬২২২ এই নাম্বারে। মহিলা প্রার্থীদের ক্ষেত্রে SAINIK এর পরিবর্তে FSAINIK টাইপ করে প্রথম ও দ্বিতীয় এসএমএস প্রেরণ করতে হবে।
দ্বিতীয় এসএমএস প্রেরণের পর প্রার্থীকে একটি USER ID ও Password দেয়া হবে এই USER ID ও Password দিয়ে প্রার্থীকে http://sainik.teletalk.com.bd ওয়েবসাইটে লগইন করে অনলাইনে আবেদন ফরম পূরণ করতে হবে।




"""),
        )
      ],
    );
  }
}

class _floatinButton extends StatelessWidget {
  _floatinButton({
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
        onPressed: () {},
        label: Text('Apply Here'),
        icon: SvgPicture.asset(
          'images/Mailbox.svg',
          color: Get.isDarkMode ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}

class _vaccencyFirstRow extends StatelessWidget {
  _vaccencyFirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;
    return Container(
      decoration:
          BoxDecoration(color: Get.isDarkMode ? const Color(0xFF011627) : Colors.white),
      width: MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(
        minHeight: 10,
        maxHeight: 500,
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _vaccencySecondRow extends StatelessWidget {
  _vaccencySecondRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;

    return Container(
      // alignment: Alignment.centerLeft,
      decoration:
          BoxDecoration(color: Get.isDarkMode ? const Color(0xFF011627) : Colors.white),

      width: MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(
        minHeight: 10,
        maxHeight: 500,
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _vaccencyThirdRow extends StatelessWidget {
  _vaccencyThirdRow({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    context.theme;

    return Container(
      // alignment: Alignment.centerLeft,
      decoration:
          BoxDecoration(color: Get.isDarkMode ? const Color(0xFF011627) : Colors.white),

      width: MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(
        minHeight: 10,
        maxHeight: 500,
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    'Vacenncy :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details Vacenncy Details',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Deadlinevaccency extends StatelessWidget {
  _Deadlinevaccency({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    context.theme;

    return Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            color:  Get.isDarkMode
        ? const Color(0xFF011627) : Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3.5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dedline:',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '30 january',
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Vacenncy',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'vacenncy 200',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.7,
                constraints: const BoxConstraints(
                  minHeight: 10,
                  maxHeight: double.infinity,
                ),
                margin: EdgeInsets.only(left: 5),
                child: Wrap(
                  runSpacing: 5,
                  spacing: 5,
                  children: [
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
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'data',
                          style: TextStyle(
                              fontSize: 15,
                              color: Get.isDarkMode ? Colors.white70 : Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor:
                            Get.isDarkMode ? Colors.black : btnBgLight)),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'data',
                          style: TextStyle(
                              fontSize: 15,
                              color: Get.isDarkMode ? Colors.white70 : Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor:
                            Get.isDarkMode ? Colors.black : btnBgLight)),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'data',
                          style: TextStyle(
                              fontSize: 15,
                              color: Get.isDarkMode ? Colors.white70 : Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor:
                            Get.isDarkMode ? Colors.black : btnBgLight)),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'data',
                          style: TextStyle(
                              fontSize: 15,
                              color: Get.isDarkMode ? Colors.white70 : Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor:
                            Get.isDarkMode ? Colors.black : btnBgLight)),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'data',
                          style: TextStyle(
                              fontSize: 15,
                              color: Get.isDarkMode ? Colors.white70 : Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor:
                            Get.isDarkMode ? Colors.black : btnBgLight)),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'data',
                          style: TextStyle(
                              fontSize: 15,
                              color: Get.isDarkMode ? Colors.white70 : Colors.black54),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            shape: const StadiumBorder(),
                            backgroundColor:
                            Get.isDarkMode ? Colors.black : btnBgLight)),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class _PageHeading extends StatelessWidget {
  const _PageHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.theme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'images/dummy.svg',
            height: 80,
            width: 80,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Hello This is Dummy Data for first time use and for tempotery',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Hello This is Dummy Data for first time use and for tempotery',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

void showCustomDialog(BuildContext context, String url) {
  final image = url;
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
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PhotoView(
              imageProvider: AssetImage(image),
              backgroundDecoration: BoxDecoration(
                color: Colors.black54.withOpacity(0.5),
              ),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: Offset(1, 0), end: Offset.zero);
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
