import 'package:get/get.dart';

import 'home_controllerg.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeControllerG>(() {
      return HomeControllerG();
    });
  }
}
