import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';
import 'package:mya_ngwe_san/lib/view_model/login_view_model.dart';

import '../../reusable_widget/text_view.dart';
import '../../reusable_widget/underline_text_form_field.dart';

class LoginCard extends StatelessWidget {
  final LoginViewModel loginVm;

  const LoginCard({Key? key, required this.loginVm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailTextController = TextEditingController();
    TextEditingController passwordTextController = TextEditingController();
    return Container(
   //   width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38.r), topRight: Radius.circular(38.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
        child: ListView(
        //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 10.h+10.w,
            ),
            Center(child: TextView(title: 'Hello world', fontSize: kExtraLargeFont18.sp,fontWeight: FontWeight.bold,)),


            SizedBox(
              height: 10.h+10.w,
            ),
            UnderLineTextFormField(textEditingController: emailTextController,prefixIcon: Icons.visibility_off,isPrefix: true,),
            UnderLineTextFormField(textEditingController: emailTextController,prefixIcon: Icons.visibility_off,),
            TextView(title: 'Hello world', fontSize: kSmallFont12.sp,),
          ],
        ),
      ),
    );
  }
}
