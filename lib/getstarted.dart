import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:task_manager_ui/constant/colors.dart';
import 'package:task_manager_ui/homescreen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({
    Key? key,
  }) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
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

  List<_SalesData> data = [_SalesData('Jan', 35), _SalesData('Feb', 28), _SalesData('Mar', 34), _SalesData('Apr', 32), _SalesData('May', 40)];

  double top = 0;
  double left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            top: animate ? 0 : -250,
            duration: const Duration(seconds: 2),
            child: Image.asset(
              'assets/images/orange1.png',
              fit: BoxFit.contain,
              height: 219.h,
              width: 180.w,
            ),
          ),
          AnimatedPositioned(
            top: 62.h,
            right: animate ? 0 : -300,
            duration: const Duration(seconds: 2),
            child: Image.asset(
              'assets/images/blue1.png',
              fit: BoxFit.contain,
              height: 157.h,
              width: 236.w,
            ),
          ),
          AnimatedPositioned(
            top: 246.h,
            left: animate ? 0 : -300,
            duration: const Duration(seconds: 2),
            child: Image.asset(
              'assets/images/whitecurve.png',
              fit: BoxFit.contain,
              height: 157.h,
              width: 356.w,
            ),
          ),
          AnimatedPositioned(
            top: 430.h,
            right: animate ? 0 : -300,
            duration: const Duration(seconds: 2),
            child: Image.asset(
              'assets/images/blackcurve.png',
              fit: BoxFit.contain,
              height: 157.h,
              width: 356.w,
            ),
          ),
          AnimatedPositioned(
            top: 628.h,
            left: 52.w,
            duration: const Duration(seconds: 8),
            child: AnimatedTextKit(
              pause: const Duration(hours: 100),
              animatedTexts: [
                TyperAnimatedText(
                  'Create your',
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            top: 668.h,
            left: 52.w,
            duration: const Duration(seconds: 8),
            child: Row(
              children: [
                GradientText(
                  'Tasks',
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
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
                    ],
                  ),
                  style: TextStyle(fontSize: 40.0.sp, fontWeight: FontWeight.bold),
                ),
                AnimatedTextKit(
                  pause: const Duration(hours: 100),
                  animatedTexts: [
                    TyperAnimatedText(
                      ' And',
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            top: 709.h,
            left: 52.w,
            duration: const Duration(seconds: 8),
            child: AnimatedTextKit(
              pause: const Duration(hours: 100),
              animatedTexts: [
                TyperAnimatedText(
                  'Manage Your',
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            top: 745.h,
            left: 52.w,
            duration: const Duration(seconds: 8),
            child: AnimatedTextKit(
              pause: const Duration(hours: 100),
              animatedTexts: [
                TyperAnimatedText(
                  'Work',
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            // top: 825.h,
            left: 52.w,
            bottom: 55.h,
            duration: const Duration(seconds: 4),
            child: Container(
              height: 8.h,
              width: 8.w,
              decoration: const BoxDecoration(
                color: kGreyColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          AnimatedPositioned(
              // top: 825.h,
              left: 68.w,
              bottom: 55.h,
              duration: const Duration(seconds: 4),
              child: Container(
                height: 8.h,
                width: 8.w,
                decoration: const BoxDecoration(
                  color: kGreyColor,
                  shape: BoxShape.circle,
                ),
              )),
          AnimatedPositioned(
              bottom: 55.h,
              // top: 825.h,
              left: 84.w,
              duration: const Duration(seconds: 4),
              child: Container(
                height: 8.h,
                width: 27.w,
                decoration: const BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              )),
          AnimatedPositioned(
            bottom: 40.h,
            right: animate ? 42.w : 0.w,
            duration: const Duration(milliseconds: 800),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
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
                    child: Draggable<int>(
                      data: 10,
                      child: Container(
                        height: 50.h,
                        width: 108.w,
                        color: kTransparent,
                        child: Center(
                          child: Image.asset('assets/images/start.png'),
                        ),
                      ),
                      feedbackOffset: Offset(0, 2),
                      rootOverlay: true,
                      maxSimultaneousDrags: 10,
                      childWhenDragging: Container(
                        height: 50.h,
                        width: 108.w,
                        child: Center(
                          child: Image.asset('assets/images/start.png'),
                        ),
                      ),
                      feedback: Container(
                        height: 50.h,
                        width: 108.w,
                        child: Center(
                          child: Image.asset('assets/images/start.png'),
                        ),
                      ),
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

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
