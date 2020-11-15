import 'package:get/get.dart';

import 'details_controllerg.dart';

class DetailsBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsControllerG>(() {
      return DetailsControllerG();
    });
  }
}
