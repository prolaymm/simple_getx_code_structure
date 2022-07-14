import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';
import 'package:mya_ngwe_san/lib/view_model/login_view_model.dart';

import '../../reusable_widget/text_view.dart';
import 'login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loginVm = Get.find<LoginViewModel>();

    return Scaffold(



      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset("assets/images/welcome.png", fit: BoxFit.fill,  height: 0.3.sw+0.3.sh,width: double.infinity,),
            TextView(title: 'Hello world', fontSize: kLargeFont16.sp,fontWeight: FontWeight.bold,),
            Positioned(
              top: 0.26.sw+0.26.sh ,
                bottom: 0,
                left: 0,
                right: 0,
                child: LoginCard(loginVm: loginVm,))
          ],
        ),
      ),
    );
  }
}
