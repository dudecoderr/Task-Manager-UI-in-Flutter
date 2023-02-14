import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager_ui/constant/colors.dart';
import 'package:task_manager_ui/constant/string_constant.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool animate = false;
  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
  }

  List imgs = ['assets/images/person2.png', 'assets/images/person3.png', 'assets/images/person4.png', 'assets/images/person5.png'];
  List chatsImgs = [
    'assets/images/person2.png',
    'assets/images/person3.png',
    'assets/images/person4.png',
    'assets/images/person5.png',
    'assets/images/person2.png'
  ];
  List memberName = ["Chat", "Chand", "Matt", "Julie", "Yuri"];
  List chatsName = ['Chat Boldwick', 'Yuri Lorental', 'Julie Woodland', 'Erica Yaeger', 'Jung Taekwoon'];
  List chatsSubName = [
    'Sending the file right now',
    'Can you confirm deadline?',
    'I haven’t completed the work.',
    'Voice Message (0:23)',
    'Hello! How is the progress?'
  ];
  List colors = [
    kBlackLight,
    kBlackLight,
    kWhiteColor,
    kBlackLight,
    kWhiteColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteLightColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            right: animate ? 41.w : -100.w,
            top: animate ? 47.h : -100.h,
            duration: const Duration(seconds: 1),
            child: SvgPicture.asset(
              email,
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
                color: kBlackColor,
                size: 40.sp,
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
            left: animate ? 111.w : -100.w,
            top: animate ? 52.h : -100.h,
            duration: const Duration(seconds: 1),
            child: Text(
              "Welcome Jamie!",
              style: TextStyle(
                fontSize: 14.sp,
                color: kBlackDarkColor,
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
                color: kBlackDarkColor,
              ),
            ),
          ),
          AnimatedPositioned(
            left: animate ? 40.w : -200.w,
            top: 136.h,
            duration: const Duration(seconds: 1),
            child: Text(
              "Online Member",
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: kBlackDarkColor,
              ),
            ),
          ),
          AnimatedPositioned(
            top: 191.h,
            left: animate ? 0.w : -200.w,
            duration: const Duration(seconds: 1),
            child: Container(
              height: 120.h,
              width: 400.w,
              color: kTransparent,
              child: AnimationLimiter(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: imgs.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return AnimationConfiguration.staggeredList(
                        position: 0,
                        duration: const Duration(seconds: 3),
                        child: ScaleAnimation(
                          child: FadeInAnimation(
                            child: Padding(
                              padding: EdgeInsets.only(left: 40.w),
                              child: Container(
                                margin: EdgeInsets.only(right: 19.w),
                                color: kTransparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      chat,
                                      height: 70.h,
                                      width: 70.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 14.h),
                                      child: Text(
                                        memberName[index],
                                        style: TextStyle(
                                          color: kBlackColor,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return AnimationConfiguration.staggeredList(
                        position: index - 1,
                        duration: const Duration(seconds: 3),
                        child: ScaleAnimation(
                          // curve: Curves.bounceInOut,
                          child: FadeInAnimation(
                            child: Container(
                              margin: EdgeInsets.only(right: 19.w),
                              child: Column(
                                children: [
                                  Image.asset(
                                    imgs[index - 1],
                                    height: 70.h,
                                    width: 70.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 14.h),
                                    child: Text(
                                      memberName[index],
                                      style: TextStyle(
                                        color: kBlackColor,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            bottom: animate ? 0 : -600.h,
            duration: const Duration(milliseconds: 200),
            child: Container(
              height: 594.h,
              width: 428.w,
              decoration: BoxDecoration(
                color: kBlackColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    top: 43.h,
                    right: animate ? 229.w : -300.w,
                    duration: const Duration(milliseconds: 500),
                    child: Text(
                      recentChat,
                      style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 28.sp),
                    ),
                  ),
                  AnimatedPositioned(
                    top: 36.h,
                    right: animate ? 34.w : -300.w,
                    duration: const Duration(milliseconds: 500),
                    child: Image.asset(
                      'assets/images/archive.png',
                      fit: BoxFit.contain,
                      height: 50.h,
                      width: 151.w,
                    ),
                  ),
                  AnimationLimiter(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 121.h, left: 34.w),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 800),
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 29.h),
                                child: Row(
                                  children: [
                                    Draggable<String>(
                                      data: 'red',
                                      feedback: Image.asset(
                                        chatsImgs[index],
                                        height: 63.h,
                                        width: 63.w,
                                      ),
                                      child: Image.asset(
                                        chatsImgs[index],
                                        height: 63.h,
                                        width: 63.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 17.w),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            chatsName[index],
                                            style: TextStyle(color: kWhiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 7.h),
                                            child: Text(
                                              chatsSubName[index],
                                              style: TextStyle(
                                                color: colors[index],
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "20 min",
                                      style: TextStyle(color: kBlackLight, fontSize: 13.sp),
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
