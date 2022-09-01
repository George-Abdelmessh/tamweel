import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_row_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.paddingV10,
      child: SizedBox(
        height: AppSize.height * 0.3,
        child: Stack(
          children: [
            Container(
              height: AppSize.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: AppRadius.radius20,
                color: Colors.white,
              ),
            ),
            Align(
              child: Padding(
                padding: AppPaddingCopy.paddingH001,
                child: Container(
                  height: AppSize.height * 0.27,
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
                      icon: Icons.location_on_outlined,
                      title: 'خدمتنا',
                      onTap: () {},
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    CustomRowButton(
                      icon: Icons.phone,
                      title: '15255',
                      onTap: () {},
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    CustomRowButton(
                      icon: Icons.mail_outline,
                      title: 'info@ayadymisr.com',
                      onTap: () {},
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: const Divider(
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: AppSize.height * 0.035,
                    ),
                    SizedBox(
                      width: AppSize.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            FontAwesomeIcons.twitter,
                            color: AppColor.secondary,
                          ),
                          Icon(
                            FontAwesomeIcons.linkedin,
                            color: AppColor.secondary,
                          ),
                          Icon(
                            FontAwesomeIcons.facebook,
                            color: AppColor.secondary,
                          ),
                          Icon(
                            FontAwesomeIcons.instagram,
                            color: AppColor.secondary,
                          ),
                        ],
                      ),
                    )
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
                  '\tاتصل بنا\t',
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
