import 'package:get/get.dart';
import 'package:gettest/modules/home/home_page.dart';
import 'package:gettest/modules/home/home_bind.dart';
import 'package:gettest/modules/details/details_page.dart';
import 'package:gettest/modules/details/details_bind.dart';

var getPages = [
  GetPage(name: '/', page: () => HomePage(), binding: HomeBind()),
  GetPage(name: '/details', page: () => DetailsPage(), binding: DetailsBind()),
];
