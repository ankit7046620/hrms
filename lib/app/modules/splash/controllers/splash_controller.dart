import 'package:amax_hr/utils/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../routes/app_pages.dart';
import 'package:amax_hr/utils/app_funcation.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateBasedOnOnboarding();
  }

  Future<void> _navigateBasedOnOnboarding() async {
    await Future.delayed(const Duration(seconds: 2)); // splash delay
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = prefs.getBool(LocalKeys.onboardingSeen) ?? false;

    if (seen) {
      AppFunction.goToAndReplace(Routes.LOGIN);
    } else {
      AppFunction.goToAndReplace(Routes.ONBOARDING);
    }
  }
}
