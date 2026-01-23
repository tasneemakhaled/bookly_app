import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
       SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
  
  void navigateToHome() {
    Future.delayed(Duration(seconds: 2),() {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push(AppRouter.kHomeView);
    // Get.to(()=>HomeView(),transition: Transition.fadeIn,duration: Duration(milliseconds: 250));
    },);
  }

  void initSlidingAnimation() {
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 2));
    slidingAnimation=Tween<Offset>(begin: Offset(0, 5),end:Offset(0, 0) ).animate(animationController);
       animationController.forward();
  }
}



// animation controller [0:1] only
//single responsiplity principle (solid principles) => كل كلاس وفانكشن مسءول عن حاجة واحدة فقططط