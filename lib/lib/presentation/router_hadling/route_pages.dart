import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/di/add_new_address_binding.dart';
import 'package:mya_ngwe_san/lib/di/checkout_binding.dart';
import 'package:mya_ngwe_san/lib/di/my_address_binding.dart';
import 'package:mya_ngwe_san/lib/presentation/router_hadling/route_page_name.dart';
import 'package:mya_ngwe_san/lib/presentation/screens/about_screen/about_screen.dart';
import 'package:mya_ngwe_san/lib/presentation/screens/add_new_address_screen/add_new_address_screen.dart';
import 'package:mya_ngwe_san/lib/presentation/screens/checkout_screen/checkout_screen.dart';
import 'package:mya_ngwe_san/lib/presentation/screens/my_address_screen/my_address_screen.dart';
import '../../di/bottom_nav_main_binding.dart';
import '../screens/bottom_nav_main/bottom_nav_main.dart';

class RoutePages {
  var routerPages = [
    GetPage(name: RoutePageName.rINITIAL,page: () => const BottomNavMain(),binding: BottomNavMainBinding()),
    GetPage(name: RoutePageName.rAbout,page: () => const AboutScreen()),
    GetPage(name: RoutePageName.rAddNewAddress,page: () => const AddNewAddressScreen(),binding: AddNewAddressBinding()),
    GetPage(name: RoutePageName.rMyAddress,page: () => const MyAddressScreen(),binding: MyAddressBinding()),
    GetPage(name: RoutePageName.rCheckout,page: () => const CheckoutScreen(),binding: CheckoutBinding()),
  ];
}
