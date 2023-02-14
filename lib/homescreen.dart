import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:task_manager_ui/chat_screen.dart';
import 'package:task_manager_ui/constant/colors.dart';
import 'package:task_manager_ui/constant/string_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  bool animate = false;
  List percent = [0.7, 0.8, 0.98, 0.7, 0.8, 0.98];
  List percent2 = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0];
  List percentText = ["70%", "80%", "98%", "70%", "80%", "98%"];
  List percent2Text = ["100%", "100%", "100%", "100%", "100%", "100%"];
  List chatAbouts = ["Over due", "Scheduled", "Completing", "Over due", "Scheduled", "Completing"];
  List chatList = ["Chat Application", "NFT Website", "NFT Website", "Chat Application", "NFT Website", "NFT Website"];
  List chatAbout = ["Mar 13,2022", "Mar 16,2022", "Mar 16,2022", "Mar 13,2022", "Mar 16,2022", "Mar 16,2022"];
  List percentColor = [
    const Color(0xff6373F7),
    const Color(0xffFEBD93),
    const Color(0xff91E0FE),
    const Color(0xff6373F7),
    const Color(0xffFEBD93),
    const Color(0xff91E0FE),
  ];
  List percent2Color = [
    const Color(0xff76EF83),
    const Color(0xff76EF83),
    const Color(0xff76EF83),
    const Color(0xff76EF83),
    const Color(0xff76EF83),
    const Color(0xff76EF83),
  ];
  List aboutColor = [
    const Color(0xffFF6B6B),
    const Color(0xffFFC83F),
    const Color(0xff76EF83),
    const Color(0xffFF6B6B),
    const Color(0xffFFC83F),
    const Color(0xff76EF83),
  ];

  @override
  void initState() {
    startAnimation();
    _tabController = TabController(length: (2), vsync: this);
    super.initState();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
  }

  var _bottomNavIndex = 0;
  final iconList = [
    Icons.home_filled,
    Icons.file_open_sharp,
    Icons.notification_important,
    Icons.settings_rounded,
  ];

  double _width1 = 72;
  List DateList = [
    DateAndDay(dayName: "Wed", date: 1),
    DateAndDay(dayName: "Thu", date: 2),
    DateAndDay(dayName: "Fri", date: 3),
    DateAndDay(dayName: "Sat", date: 4),
    DateAndDay(dayName: "Sun", date: 5),
    DateAndDay(dayName: "Mon", date: 6),
    DateAndDay(dayName: "Tue", date: 7),
    DateAndDay(dayName: "Wed", date: 8),
    DateAndDay(dayName: "Thu", date: 9),
    DateAndDay(dayName: "Fri", date: 10),
    DateAndDay(dayName: "Sat", date: 11),
    DateAndDay(dayName: "Sun", date: 12),
    DateAndDay(dayName: "Mon", date: 13),
    DateAndDay(dayName: "Tue", date: 14),
    DateAndDay(dayName: "Wed", date: 15),
    DateAndDay(dayName: "Thu", date: 16),
    DateAndDay(dayName: "Fri", date: 17),
    DateAndDay(dayName: "Sat", date: 18),
    DateAndDay(dayName: "Sun", date: 19),
    DateAndDay(dayName: "Mon", date: 20),
    DateAndDay(dayName: "Tue", date: 21),
    DateAndDay(dayName: "Wed", date: 22),
    DateAndDay(dayName: "Thu", date: 23),
    DateAndDay(dayName: "Fri", date: 24),
    DateAndDay(dayName: "Sat", date: 25),
    DateAndDay(dayName: "Sun", date: 26),
    DateAndDay(dayName: "Mon", date: 27),
    DateAndDay(dayName: "Tue", date: 28),
    DateAndDay(dayName: "Wed", date: 29),
    DateAndDay(dayName: "Thu", date: 30),
  ];

  int activePage = 5;
  final PageController ctrl = PageController(viewportFraction: 0.17, initialPage: 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Container(
        color: kWhiteColor,
        child: BottomNavigationBar(
          enableFeedback: true,
          currentIndex: _bottomNavIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: _bottomNavIndex == 0
                    ? Image.asset(
                        "assets/images/selecthome.png",
                        height: 35.05.h,
                        width: 22.88.w,
                      )
                    : Image.asset(
                        "assets/images/home.png",
                        height: 22.85.h,
                        width: 22.88.w,
                      ),
                label: ""),
            BottomNavigationBarItem(
                icon: _bottomNavIndex == 1
                    ? Image.asset(
                        "assets/images/selectvector.png",
                        height: 35.05.h,
                        width: 22.88.w,
                      )
                    : Image.asset(
                        "assets/images/vector.png",
                        height: 22.86.h,
                        width: 22.84.w,
                      ),
                label: ""),
            BottomNavigationBarItem(
                icon: _bottomNavIndex == 2
                    ? Image.asset(
                        "assets/images/selectnotification.png",
                        height: 35.05.h,
                        width: 22.88.w,
                      )
                    : Image.asset(
                        "assets/images/notification.png",
                        height: 21.66.h,
                        width: 18.59.w,
                      ),
                label: ""),
            BottomNavigationBarItem(
                icon: _bottomNavIndex == 3
                    ? Image.asset(
                        "assets/images/selectsetting.png",
                        height: 35.05.h,
                        width: 22.88.w,
                      )
                    : Image.asset(
                        "assets/images/setting.png",
                        height: 21.57.h,
                        width: 22.87.w,
                      ),
                label: ""),
          ],
          backgroundColor: kWhiteColor,
          elevation: 0,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kTransparent,
        onPressed: () {},
        child: Image.asset("assets/images/floatadd.png"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Container(
            color: kBlackColor,
            child: Stack(
              children: [
                AnimatedPositioned(
                  right: animate ? 41.w : -100.w,
                  top: animate ? 47.h : -100.h,
                  duration: const Duration(seconds: 1),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const ChatScreen(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(-1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;
                            var tween = Tween(begin: begin, end: end).chain(
                              CurveTween(curve: curve),
                            );
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      whiteMail,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  left: animate ? 40.w : -100.w,
                  top: animate ? 47.h : -100.h,
                  duration: const Duration(seconds: 1),
                  child: Image.asset(
                    'assets/images/person1.png',
                    height: 53.h,
                    width: 53.w,
                  ),
                ),
                AnimatedPositioned(
                  left: animate ? 7.w : -100.w,
                  top: animate ? 47.h : -100.h,
                  duration: const Duration(seconds: 1),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_left_outlined,
                      color: kWhiteColor,
                      size: 40.sp,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  left: animate ? 111.w : -100.w,
                  top: animate ? 52.h : -100.h,
                  duration: const Duration(seconds: 1),
                  child: Text(
                    "Welcome Jamie!",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  left: animate ? 111.w : -100.w,
                  top: animate ? 70.h : -100.h,
                  duration: const Duration(seconds: 1),
                  child: Text(
                    "Explore Tasks",
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  top: 140.h,
                  left: 40.w,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: kGreyLightColor,
                      shape: BoxShape.circle,
                    ),
                    child: CircularPercentIndicator(
                      linearGradient: const LinearGradient(colors: [
                        Color(0xfffed7cd),
                        Color(0xfffcbf9e),
                        Color(0xffc39fbd),
                        Color(0xff8a7bc7),
                        Color(0xff7179e7),
                        Color(0xff77c2fe),
                        Color(0xff89fefe),
                        Color(0xffb9e3e4),
                        Color(0xffd1edd9),
                        Color(0xffe2e1c6),
                        Color(0xffedf4d1),
                        Color(0xfff9f1bd),
                      ]),
                      radius: 45.0.r,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 6.0,
                      percent: 0.7,
                      center: Text(
                        "70%",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: kWhiteColor),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: kTransparent,
                      //progressColor: Colors.red,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  top: 163.h,
                  left: animate ? 161.w : -100.w,
                  duration: const Duration(milliseconds: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Task",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Completed",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedPositioned(
                  top: animate ? 251.h : -500,
                  left: animate ? 0 : -200,
                  onEnd: () {
                    setState(() {
                      _width1 = 428.w;
                    });
                  },
                  duration: const Duration(seconds: 1),
                  child: AnimatedContainer(
                    height: 127.h,
                    width: _width1,
                    color: Colors.transparent,
                    duration: const Duration(seconds: 1),
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: ctrl,
                      itemCount: DateList.length,
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (context, index) {
                        if (activePage == index) {
                          return Container(
                            height: 99.h,
                            width: 61.w,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.r),
                              // color: Colors.green,
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xfffee0ca),
                                  Color(0xfffddcc8),
                                  Color(0xfffed1b6),
                                  Color(0xffeab3a6),
                                  Color(0xffcba2b5),
                                  Color(0xffc5a3bc),
                                  Color(0xffb99ac6),
                                  Color(0xff897ac9),
                                  Color(0xff6d69d9),
                                  Color(0xff5c78ea),
                                  Color(0xff5291fb),
                                  Color(0xff59b4ff),
                                  Color(0xff63c6ef),
                                  Color(0xff80dffe),
                                  Color(0xff8af9fe),
                                  Color(0xffaafee7),
                                  Color(0xffbefbe2),
                                  Color(0xffc3f0c4),
                                  Color(0xffe1e5d3),
                                  Color(0xffe4ddcc),
                                  Color(0xffead7bf),
                                  Color(0xffefd7b8),
                                  Color(0xfff6ecb5)
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  DateList[index].date.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: kBlackColor),
                                ),
                                Text(
                                  DateList[index].dayName,
                                  style: TextStyle(color: kBlackLight, fontWeight: FontWeight.bold, fontSize: 14.sp),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Container(
                            height: 99.h,
                            width: 61.w,
                            margin: EdgeInsets.symmetric(vertical: 14.h, horizontal: 5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xff333333),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  DateList[index].date.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp, color: kWhiteColor),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.h),
                                  child: Text(
                                    DateList[index].dayName,
                                    style: TextStyle(color: kBlackLight, fontWeight: FontWeight.bold, fontSize: 14.sp),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              AnimatedPositioned(
                right: animate ? 41.w : -100.w,
                top: 159.h,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  height: 42.h,
                  width: 104.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/menu.png",
                        height: 18.h,
                        width: 18.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.sp),
                        child: Text(
                          "Mar 22",
                          style: TextStyle(color: kBlackColor, fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                bottom: animate ? 0 : -600.h,
                duration: const Duration(milliseconds: 200),
                child: DefaultTabController(
                  length: 2,
                  child: Container(
                    height: 450.h,
                    width: 428.w,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      ),
                    ),
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          top: 33.h,
                          left: 37.w,
                          duration: const Duration(seconds: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Tasks",
                                style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 30.sp),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.h),
                                child: Text(
                                  "(7/10) Completed",
                                  style: TextStyle(color: kGreyLight, fontWeight: FontWeight.bold, fontSize: 13.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                        AnimatedPositioned(
                          right: animate ? 32.w : -100.w,
                          top: 33.h,
                          duration: const Duration(milliseconds: 500),
                          child: Container(
                            height: 58.h,
                            width: 173.w,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.r),
                              ),
                            ),
                            child: TabBar(
                              indicator: BoxDecoration(borderRadius: BorderRadius.circular(40.0.r), color: Colors.white),
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.white,
                              labelStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              padding: EdgeInsets.all(5.r),
                              tabs: const [
                                Tab(text: 'Left'),
                                Tab(text: 'Done'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 340.h,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 100.h),
                          color: kTransparent,
                          child: TabBarView(
                            children: [
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                padding: EdgeInsets.only(top: 24.h),
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return AnimationConfiguration.staggeredList(
                                    position: index,
                                    duration: const Duration(milliseconds: 800),
                                    child: ScaleAnimation(
                                      child: FadeInAnimation(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 23.h, left: 37.w),
                                          child: Row(
                                            children: [
                                              CircularPercentIndicator(
                                                radius: 35.0.r,
                                                animation: true,
                                                animationDuration: 1200,
                                                lineWidth: 6.0,
                                                percent: percent[index],
                                                center: Text(
                                                  percentText[index],
                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: kBlackColor),
                                                ),
                                                circularStrokeCap: CircularStrokeCap.round,
                                                backgroundColor: kWhiteColor,
                                                progressColor: percentColor[index],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      chatList[index],
                                                      style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 16.sp),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 5.h),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 8.h,
                                                            width: 8.h,
                                                            decoration: BoxDecoration(
                                                              color: aboutColor[index],
                                                              shape: BoxShape.circle,
                                                            ),
                                                          ),
                                                          // SvgPicture.asset(
                                                          //   circle,
                                                          // ),
                                                          Padding(
                                                            padding: EdgeInsets.only(left: 6.w),
                                                            child: Text(
                                                              chatAbouts[index],
                                                              style:
                                                                  TextStyle(color: aboutColor[index], fontWeight: FontWeight.normal, fontSize: 14.sp),
                                                            ),
                                                          ),
                                                          Text(
                                                            ", ${chatAbout[index]}",
                                                            style: TextStyle(color: kGreyLight, fontWeight: FontWeight.normal, fontSize: 14.sp),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/person9.png",
                                                    height: 40.26.h,
                                                    width: 40.26.w,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 23.w),
                                                    child: Image.asset(
                                                      "assets/images/person8.png",
                                                      height: 40.26.h,
                                                      width: 40.26.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 32.w,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                padding: EdgeInsets.only(top: 24.h),
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return AnimationConfiguration.staggeredList(
                                    position: index,
                                    duration: const Duration(milliseconds: 800),
                                    child: ScaleAnimation(
                                      child: FadeInAnimation(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 23.h, left: 37.w),
                                          child: Row(
                                            children: [
                                              CircularPercentIndicator(
                                                radius: 35.0.r,
                                                animation: true,
                                                animationDuration: 1200,
                                                lineWidth: 6.0,
                                                percent: percent2[index],
                                                center: Text(
                                                  percent2Text[index],
                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: kBlackColor),
                                                ),
                                                circularStrokeCap: CircularStrokeCap.round,
                                                backgroundColor: kWhiteColor,
                                                progressColor: percent2Color[index],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: 15.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      chatList[index],
                                                      style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 16.sp),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 5.h),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            chatAbouts[index],
                                                            style:
                                                                TextStyle(color: aboutColor[index], fontWeight: FontWeight.normal, fontSize: 14.sp),
                                                          ),
                                                          Text(
                                                            ", ${chatAbout[index]}",
                                                            style: TextStyle(color: kGreyLight, fontWeight: FontWeight.normal, fontSize: 14.sp),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/person9.png",
                                                    height: 40.26.h,
                                                    width: 40.26.w,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 23.w),
                                                    child: Image.asset(
                                                      "assets/images/person8.png",
                                                      height: 40.26.h,
                                                      width: 40.26.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 32.w,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        )
                        // AnimatedPositioned(
                        //   right: animate ? 32.w : -100.w,
                        //   top: 33.h,
                        //   duration: const Duration(milliseconds: 500),
                        //   child: Container(
                        //     height: 58.h,
                        //     width: 173.w,
                        //     decoration: BoxDecoration(
                        //       color: Colors.black,
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(30.r),
                        //       ),
                        //     ),
                        //     padding: EdgeInsets.all(5.r),
                        //     child: TabBar(
                        //       controller: _tabController,
                        //       indicator: BoxDecoration(borderRadius: BorderRadius.circular(40.0.r), color: Colors.white),
                        //       labelColor: Colors.black,
                        //       unselectedLabelColor: Colors.white,
                        //       labelStyle: TextStyle(
                        //         fontSize: 16.sp,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //       tabs: const [
                        //         Tab(text: 'Left'),
                        //         Tab(text: 'Done'),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 100.h),
                        //   child: Positioned(
                        //     top: 100.h,
                        //     child: TabBarView(
                        //       controller: _tabController,
                        //       children: [
                        //         ListView.builder(
                        //           itemCount: 3,
                        //           itemBuilder: (BuildContext context, int index) {
                        //             return AnimationConfiguration.staggeredList(
                        //               position: index,
                        //               duration: const Duration(milliseconds: 800),
                        //               child: ScaleAnimation(
                        //                 child: FadeInAnimation(
                        //                   child: Padding(
                        //                     padding: EdgeInsets.only(bottom: 23.h, left: 37.w),
                        //                     child: Row(
                        //                       children: [
                        //                         CircularPercentIndicator(
                        //                           radius: 35.0.r,
                        //                           animation: true,
                        //                           animationDuration: 1200,
                        //                           lineWidth: 6.0,
                        //                           percent: percent[index],
                        //                           center: Text(
                        //                             percentText[index],
                        //                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: kBlackColor),
                        //                           ),
                        //                           circularStrokeCap: CircularStrokeCap.round,
                        //                           backgroundColor: kWhiteColor,
                        //                           progressColor: percentColor[index],
                        //                         ),
                        //                         Padding(
                        //                           padding: EdgeInsets.only(left: 15.w),
                        //                           child: Column(
                        //                             crossAxisAlignment: CrossAxisAlignment.start,
                        //                             children: [
                        //                               Text(
                        //                                 chatList[index],
                        //                                 style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 16.sp),
                        //                               ),
                        //                               Padding(
                        //                                 padding: EdgeInsets.only(top: 5.h),
                        //                                 child: Row(
                        //                                   children: [
                        //                                     Container(
                        //                                       height: 8.h,
                        //                                       width: 8.h,
                        //                                       decoration: BoxDecoration(
                        //                                         color: aboutColor[index],
                        //                                         shape: BoxShape.circle,
                        //                                       ),
                        //                                     ),
                        //                                     // SvgPicture.asset(
                        //                                     //   circle,
                        //                                     // ),
                        //                                     Padding(
                        //                                       padding: EdgeInsets.only(left: 6.w),
                        //                                       child: Text(
                        //                                         chatAbouts[index],
                        //                                         style: TextStyle(
                        //                                             color: aboutColor[index], fontWeight: FontWeight.normal, fontSize: 14.sp),
                        //                                       ),
                        //                                     ),
                        //                                     Text(
                        //                                       ", ${chatAbout[index]}",
                        //                                       style: TextStyle(color: kGreyLight, fontWeight: FontWeight.normal, fontSize: 14.sp),
                        //                                     ),
                        //                                   ],
                        //                                 ),
                        //                               ),
                        //                             ],
                        //                           ),
                        //                         ),
                        //                         const Spacer(),
                        //                         Stack(
                        //                           children: [
                        //                             Image.asset(
                        //                               "assets/images/person9.png",
                        //                               height: 40.26.h,
                        //                               width: 40.26.w,
                        //                             ),
                        //                             Padding(
                        //                               padding: EdgeInsets.only(left: 23.w),
                        //                               child: Image.asset(
                        //                                 "assets/images/person8.png",
                        //                                 height: 40.26.h,
                        //                                 width: 40.26.w,
                        //                               ),
                        //                             ),
                        //                           ],
                        //                         ),
                        //                         SizedBox(
                        //                           width: 32.w,
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ),
                        //             );
                        //           },
                        //         ),
                        //         ListView.builder(
                        //           itemCount: 3,
                        //           itemBuilder: (BuildContext context, int index) {
                        //             return AnimationConfiguration.staggeredList(
                        //               position: index,
                        //               duration: const Duration(milliseconds: 800),
                        //               child: ScaleAnimation(
                        //                 child: FadeInAnimation(
                        //                   child: Padding(
                        //                     padding: EdgeInsets.only(bottom: 23.h, left: 37.w),
                        //                     child: Row(
                        //                       children: [
                        //                         CircularPercentIndicator(
                        //                           radius: 35.0.r,
                        //                           animation: true,
                        //                           animationDuration: 1200,
                        //                           lineWidth: 6.0,
                        //                           percent: percent2[index],
                        //                           center: Text(
                        //                             percent2Text[index],
                        //                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: kBlackColor),
                        //                           ),
                        //                           circularStrokeCap: CircularStrokeCap.round,
                        //                           backgroundColor: kWhiteColor,
                        //                           progressColor: percent2Color[index],
                        //                         ),
                        //                         Padding(
                        //                           padding: EdgeInsets.only(left: 15.w),
                        //                           child: Column(
                        //                             crossAxisAlignment: CrossAxisAlignment.start,
                        //                             children: [
                        //                               Text(
                        //                                 chatList[index],
                        //                                 style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 16.sp),
                        //                               ),
                        //                               Padding(
                        //                                 padding: EdgeInsets.only(top: 5.h),
                        //                                 child: Row(
                        //                                   children: [
                        //                                     Text(
                        //                                       chatAbouts[index],
                        //                                       style:
                        //                                           TextStyle(color: aboutColor[index], fontWeight: FontWeight.normal, fontSize: 14.sp),
                        //                                     ),
                        //                                     Text(
                        //                                       ", ${chatAbout[index]}",
                        //                                       style: TextStyle(color: kGreyLight, fontWeight: FontWeight.normal, fontSize: 14.sp),
                        //                                     ),
                        //                                   ],
                        //                                 ),
                        //                               ),
                        //                             ],
                        //                           ),
                        //                         ),
                        //                         const Spacer(),
                        //                         Stack(
                        //                           children: [
                        //                             Image.asset(
                        //                               "assets/images/person9.png",
                        //                               height: 40.26.h,
                        //                               width: 40.26.w,
                        //                             ),
                        //                             Padding(
                        //                               padding: EdgeInsets.only(left: 23.w),
                        //                               child: Image.asset(
                        //                                 "assets/images/person8.png",
                        //                                 height: 40.26.h,
                        //                                 width: 40.26.w,
                        //                               ),
                        //                             ),
                        //                           ],
                        //                         ),
                        //                         SizedBox(
                        //                           width: 32.w,
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ),
                        //             );
                        //           },
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DateAndDay {
  String dayName;
  int date;

  DateAndDay({required this.dayName, required this.date});
}
