import 'package:bookly_app/core/utils/asssets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

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
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 2));
    slidingAnimation=Tween<Offset>(begin: Offset(0, 5),end:Offset(0, 0) ).animate(animationController);
   animationController.forward();
    super.initState();
    
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
}



// animation controller [0:1] only