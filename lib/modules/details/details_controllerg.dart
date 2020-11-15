import 'package:get/get.dart';

class DetailsControllerG extends GetxController {
  RxList<dynamic> clientsData = [].obs;
  RxString title = ''.obs;

  final clientsDataMock = [
    {
      'label': 'Carrefour',
    },
    {
      'label': 'Wallmart',
    },
    {
      'label': 'Pão de Açúcar',
    }
  ];

  @override
  void onInit() {
    title.value = 'Details Page';

    print(Get.arguments); // NULL

    assert(Get.arguments != null);

    getData();
    super.onInit();
  }

  getData() async {
    await Future.delayed(Duration(milliseconds: 2000));
    clientsData.assignAll(clientsDataMock);
  }
}
