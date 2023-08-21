import 'package:booky/core/utils/app_router.dart';
import 'package:booky/core/utils/assets_data.dart';
import 'package:booky/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 20,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
    // SlideTransition(
    //   position: slidingAnimation,
    //   child: Center(
    //     child: Image.asset(AssetsData.logo),
    //   ),
    // );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
GoRouter.of(context).push(AppRouter.kHomeViewPath);
      },
    );
  }
}
