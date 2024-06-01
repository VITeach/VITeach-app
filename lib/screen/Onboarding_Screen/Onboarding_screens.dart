import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:viteach_learning_app/utils/constants/image_strings.dart';
import 'package:viteach_learning_app/utils/constants/sizes.dart';
import 'package:viteach_learning_app/utils/constants/text_strings.dart';
import 'package:viteach_learning_app/utils/device/device_utilities.dart';
import 'package:viteach_learning_app/utils/helpers/Helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            children: const [
              onBoardingPage(
                image: VImages.onBoardingImage1,
                title: VTexts.onBoardingTitle1,
                subtitle: VTexts.onBoardingSubTitle1,
              ),
              onBoardingPage(
                image: VImages.onBoardingImage2,
                title: VTexts.onBoardingTitle2,
                subtitle: VTexts.onBoardingSubTitle2,
              ),
              onBoardingPage(
                image: VImages.onBoardingImage3,
                title: VTexts.onBoardingTitle3,
                subtitle: VTexts.onBoardingSubTitle3,
              )
            ],
          ),

          // Skip Button
          const skipButtonWidget(),

          // Dot Navigation SmoothPageIndicator
          const dotPageNot(),

          // Rectangular Button

        ],
      ),
    );
  }
}

class dotPageNot extends StatelessWidget {
  const dotPageNot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: VDeviceUtils.getBottomNavigationBarHeight(),
      left: VSizes.defaultSpace,
      child: SmoothPageIndicator(controller: PageController(), count: 3,
        effect: ExpandingDotsEffect(activeDotColor: Colors.blueAccent, dotHeight: 6),
      ),
    );
  }
}

class skipButtonWidget extends StatelessWidget {
  const skipButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: VDeviceUtils.getAppBarHeight(),
        right: VSizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Skip",
            style: TextStyle(fontSize: VSizes.fontSizeMd),
          ),
        ));
  }
}

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(VSizes.defaultSpace),
      child: Column(
        children: [
          const SizedBox(
            height: VSizes.spaceBtwSections * 4,
          ),
          Image(
            width: VHelperFunctions.screenWidth() * .80,
            height: VHelperFunctions.screenHeight() * .50,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
