
import 'package:amax_hr/utils/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../common/component/common_elevated_button.dart';
import '../../../../common/component/custom_image_widget.dart';
import '../../../../constant/assets_constant.dart';
import '../../../../constant/localel.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [_buildTopSection(size), _buildBottomSection(size)],
      ),
    );
  }

  Widget _buildTopSection(Size size) {
    return Container(
      height: size.height * 0.6,
      width: double.infinity,
      color: const Color(0xFFFFF3E0), // Light cream background
      child: CustomImageWidget(
        fit: BoxFit.contain,
        imagePath: AssetsConstant.logo,
        height: 100,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }

  Widget _buildBottomSection(Size size) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: Container(
        height: size.height * 0.4,
        width: double.infinity,
        color: Colors.green,
        padding: const EdgeInsets.symmetric(vertical: 20),
        // Optional vertical padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            _buildTagline(),
            const Spacer(),
            _buildGetStartedButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTagline() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: EdgeInsetType.xxxxs),
      child: Text(
        LabelConstants.tagline,
        style: GoogleFonts.poppins(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildGetStartedButton() {
    return Padding(
      padding: EdgeInsets.only(
        left: EdgeInsetType.xxxxs,
        right: EdgeInsetType.xxxxs,
      ),
      child: CommonElevatedButton(
        onPressed: () {  },
        height: 50,
        width: double.infinity,
        child: Text(LabelConstants.startNow),
      ),
    );
  }
}
