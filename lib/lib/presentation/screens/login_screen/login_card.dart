import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_button.dart';
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
      // height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38.r), topRight: Radius.circular(38.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 30.w, vertical: kDefaultMarginHeight.h),
        child: ListView(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h + 2.w,
            ),
            Center(
                child: TextView(
              title: 'Log In',
              fontSize: kLargestFont22.sp,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(
              height: 8.h + 8.w,
            ),
            TextView(
              title: 'Email',
              fontSize: kSmallFont12.sp,
              color: Theme.of(context).hintColor,
            ),
            SizedBox(
                height: 30.h,
                child: UnderLineTextFormField(
                  textEditingController: emailTextController,
                )),
            SizedBox(
              height: 30.h,
            ),
            TextView(
              title: 'Password',
              fontSize: kSmallFont12.sp,
              color: Theme.of(context).hintColor,
            ),
            SizedBox(
                height: 30.h,
                child: UnderLineTextFormField(
                    textEditingController: passwordTextController,
                    prefixIcon: Icons.visibility_off,
                    isPassword: true,
                    isPrefix: true)),
            SizedBox(
              height: kSmallMargin.h+kSmallMargin.w,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextView(
                title: 'Forget Password?',
                fontSize: kSmallFont12.sp,
                color: Theme.of(context).hintColor,
              ),
            ),
            SizedBox(
              height: 30.h,),
            
            CustomButton(buttonText: "Process", onClick: ()=> debugPrint("Hello world"))
          ],
        ),
      ),
    );
  }
}
