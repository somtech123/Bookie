import 'package:get/get.dart';

import '../../featue/dashboard/screen/dashboard.dart';

class AppPage {
  static List<GetPage> appPages = [
    GetPage(name: Dashboard.path, page: () => const Dashboard()),
  ];
}
