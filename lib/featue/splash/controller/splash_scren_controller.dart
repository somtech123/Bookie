import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../dashboard/screen/dashboard.dart';

class SplashScreenController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  Animation<double> get animation => _animation!;

  @override
  void onInit() {
    super.onInit();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 10),
    )..forward();
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!);
    update();
  }

  @override
  void onClose() {
    _animationController!.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    moveToNext();
    super.onReady();
  }

  moveToNext() async {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Dashboard.path);
    });
  }
}
