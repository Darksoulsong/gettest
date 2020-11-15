import 'package:get/get.dart';

class HomeControllerG extends GetxController {
  RxList<dynamic> clientsData = [].obs;
  RxString username = ''.obs;
  RxString title = ''.obs;
  RxString usernameAbbr = ''.obs;

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
    username.value = 'John';
    title.value = 'Hello, ${username.value}!';
    usernameAbbr.value = username.value[0].toUpperCase();

    getData();
    super.onInit();
  }

  getData() async {
    await Future.delayed(Duration(milliseconds: 2000));
    clientsData.assignAll(clientsDataMock);
  }
}
