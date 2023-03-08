import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/constant.dart';
import '../../home_screen.dart';

class SplashBodyWidget extends StatefulWidget {
  const SplashBodyWidget({Key? key}) : super(key: key);

  @override
  State<SplashBodyWidget> createState() => _SplashBodyWidgetState();
}

class _SplashBodyWidgetState extends State<SplashBodyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    _addAnimation();
    _goToHome();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(height: 4.h),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: Text(
                "Read Free Books",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16.sp,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void _addAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 15),
      end: const Offset(0, 0),
    ).animate(
      animationController,
    );
    animationController.forward();
    /*    slidingAnimation.addListener(() {
      setState(() {});
    });*/
  }

  Future<void> _goToHome() {
    return Future.delayed(
      const Duration(seconds: 3),
          () {
        Get.off(
              () => const HomeScreen(),
          transition: Transition.fade,
          duration: kTransitionDuration,
        );
      },
    );
  }

}
