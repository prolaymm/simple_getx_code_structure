import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/app_bar_with_drawer.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';

import '../../../utils/constant_list.dart';
import '../../reusable_widget/text_view.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:const  SimpleAppBarWithBackArrow(title: 'About Screen', isBackArrow: true,),
      body: ListView(
        children: [

        const  SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextView(title: textAbout, fontSize: kMediumFont14.sp,color: Theme.of(context).hintColor,),
          ),
          const  SizedBox(height: 30,),
        ],
      ),
    );
  }
}
