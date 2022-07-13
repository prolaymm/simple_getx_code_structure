import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mya_ngwe_san/lib/presentation/router_hadling/route_page_name.dart';
import 'package:mya_ngwe_san/lib/presentation/router_hadling/route_pages.dart';

import 'lib/core/themes/theme.dart';


void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: StyleTheme().getLightTheme(),
          initialRoute: RoutePageName.rHowTo,
          getPages: RoutePages().routerPages,
        );
      },
    );
  }
}