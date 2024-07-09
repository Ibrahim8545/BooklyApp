import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  //value from 0 to 1
  late AnimationController animationController;
  late Animation <Offset> slidingAnimation;

  @override
  void initState() {
   
    super.initState();
    animationController=AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1)
      );
      
      slidingAnimation=
      Tween<Offset>(begin:const  Offset(0, 10),end: Offset.zero)
      .animate(animationController);

      animationController.forward();

      
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4,),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context,_) {
            return SlideTransition(
              position:slidingAnimation ,
              child: const Text(
                'Read Free Books',
                textAlign: TextAlign.center,
                ),
            );
          }
        )
      ],
    );
  }
}