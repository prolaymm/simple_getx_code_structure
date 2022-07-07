import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/presentation/router_hadling/route_page_name.dart';
import '../../di/bottom_nav_main_binding.dart';
import '../screens/bottom_nav_main/bottom_nav_main.dart';

class RoutePages {
  var routerPages = [
    GetPage(
        name: RoutePageName.rINITIAL,
        page: () => const BottomNavMain(),
        binding: BottomNavMainBinding()),
  ];
}
