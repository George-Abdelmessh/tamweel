import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_row_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.paddingV10,
      child: SizedBox(
        height: AppSize.height * 0.37,
        child: Stack(
          children: [
            Container(
              height: AppSize.height * 0.37,
              decoration: BoxDecoration(
                borderRadius: AppRadius.radius20,
                color: Colors.white,
              ),
            ),
            Align(
              child: Padding(
                padding: AppPaddingCopy.paddingH001,
                child: Container(
                  height: AppSize.height * 0.34,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,

                    borderRadius: AppRadius.radius20,
                    border: Border.all(
                      width: 2,
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: AppSize.height * 0.0325,
              child: Padding(
                padding: AppPadding.paddingH005,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRowButton(
                      title: 'خدمتنا',
                      onTap: () {},
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    const CustomRowButton(
                      title: 'خريطة الموقع',
                      onTap: {},
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    const CustomRowButton(
                      title: 'الشروط والاحكام',
                      onTap: {},
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    const CustomRowButton(
                      title: 'سياسة الخصوصية',
                      onTap: {},
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    const CustomRowButton(
                      title: 'الدعم',
                      onTap: {},
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: Directionality.of(context) == TextDirection.ltr
                  ? AppSize.width * 0.1
                  : null,
              right: Directionality.of(context) == TextDirection.ltr
                  ? null
                  : AppSize.width * 0.1,
              child: Container(
                color: AppColor.white,
                height: AppSize.height * 0.04,
                child: const Text(
                  '\tمعلومات\t',
                  style: TextStyle(
                    color: AppColor.container,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
