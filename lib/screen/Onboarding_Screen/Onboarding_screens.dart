import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:viteach_learning_app/screen/Onboarding_Screen/Onboarding_controller.dart';
import 'package:viteach_learning_app/utils/constants/image_strings.dart';
import 'package:viteach_learning_app/utils/constants/sizes.dart';
import 'package:viteach_learning_app/utils/constants/text_strings.dart';
import 'package:viteach_learning_app/utils/device/device_utilities.dart';
import 'package:viteach_learning_app/utils/helpers/Helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: VImages.onBoardingImage1,
                title: VTexts.onBoardingTitle1,
                subtitle: VTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: VImages.onBoardingImage2,
                title: VTexts.onBoardingTitle2,
                subtitle: VTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: VImages.onBoardingImage3,
                title: VTexts.onBoardingTitle3,
                subtitle: VTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const SkipButtonWidget(),

          Positioned(
            left: 0,
            right: 0,
            bottom: VDeviceUtils.getBottomNavigationBarHeight(),
            child: Column(
              children: [
                // Dot Navigator
                PageIndicator(),
                const SizedBox(height: VSizes.spaceBtwItems),

                // Next Button
                ElevatedButton(
                  onPressed: () => OnboardingController.instance.nextPage(),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                        VHelperFunctions.screenWidth() - 50,
                        VDeviceUtils
                            .getBottomNavigationBarHeight()), // Width and Height
                  ),
                  child: const Text('Next'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  PageIndicator({
    super.key,
  });

  final controller = OnboardingController.instance;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: const ExpandingDotsEffect(
        activeDotColor: Colors.blueAccent,
        dotHeight: 6,
      ),
    );
  }
}

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: VDeviceUtils.getAppBarHeight(),
        right: VSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text(
            "Skip",
            style: TextStyle(fontSize: VSizes.fontSizeMd),
          ),
        ));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
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
