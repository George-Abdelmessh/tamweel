import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_hud.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class LoanDetailsScreen extends StatelessWidget {
  LoanDetailsScreen({super.key});
  final List<String> conditions = [
    'عندك معاش ضماني',
    'عندك معاش تكافل وكرامة أو سجلتي في البرنامج ولم تحصلي عليه لعدم توافر شروطه',
    'مستحقة للنفقة',
    'قادرة على العمل ولا يوجد مصدر دخل ثابت',
    'دخلك بسيط',
    'والدتك إمرأة مستحقة للدعم',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomHudWidget(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppPadding.paddingH005,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: AppPadding.padding20,
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://tamweelmisr.com/assets/imges/loans/mastour.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppSize.height * 0.025,
                      ),
                      const Text(
                        'تمويل "مستورة" للمرأة المصرية',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'إنطلاقًا من إهتمام وزارة التضامن الإجتماعي بالمرأة المصرية ومحاولاتها الدائمة لفهم وتلبية احتياجاتها ومساعدتها في تطوير مستواها المادي, تقدم الوزارة عن طريق بنك ناصر بالتعاون مع صندوق تحيا مصر برنامج تمويل المرأة المصرية المعيلة "مستورة", في ظل مبادرة تكافل وكرامة الموجهة من السيد الرئيس عبد الفتاح السيسي.',
                      ),
                      const Text(
                        'تمويل مشروعك عندنا',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'عملنالك برنامج تمويل خاص بيكي لمساعدتك في تحقيق طموحاتك عن طريق إنشاء مشروعك الخاص. دلوقتي تقدري تقدمي على طلب القرض لبدء مشروعك من خلال منصة تمويل مصر. حققي حلمك وقدمي على قرضك دلوقتي',
                      ),
                      const Divider(
                        thickness: 0,
                        color: AppColor.white,
                      ),
                      CustomWideButton(
                        title: 'حققي حلمك و قدمي علي قرضك دلوقتي ',
                        onTap: () {},
                      ),
                      const Divider(
                        thickness: 0,
                        color: AppColor.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.height * 0.2,
                  child: Stack(
                    children: [
                      ColoredBox(
                        color: AppColor.grey,
                        child: Padding(
                          padding: AppPadding.paddingH005,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'يبتدي القرض من : ',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    '4 آلاف ويصل إلى 30 ألف',
                                    style: TextStyle(
                                      color: AppColor.secondary,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'تقدري تسددي القرض من : ',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    '12 ل 24 شهر',
                                    style: TextStyle(
                                      color: AppColor.primary,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'نسبة الفوايد : ',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    '3.5% سنويًا',
                                    style: TextStyle(
                                      color: AppColor.secondary,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'رسوم اجراءات : ',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    '7%',
                                    style: TextStyle(
                                      color: AppColor.primary,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned.directional(
                        textDirection: Directionality.of(context),
                        end: 1,
                        bottom: 1,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://tamweelmisr.com/assets/imges/loan-details.png',
                          width: AppSize.width * 0.35,
                          height: AppSize.height * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: AppPadding.paddingH005,
                  child: Image.asset('assets/images/Screenshot (60).png'),
                ),
                SizedBox(
                  height: AppSize.height * 0.07 * conditions.length,
                  child: Stack(
                    children: [
                      ColoredBox(
                        color: AppColor.grey,
                        child: Padding(
                          padding: AppPadding.paddingH005,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'هل انا مؤهله للحصول على القرض ؟ ',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: AppColor.secondary),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'لو عمرك من 21 ل 60 سنة تقدري تقدمي لو إنتي:',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              ...conditions
                                  .map((e) => FittedBox(child: Text(e)))
                                  .toList(),
                            ],
                          ),
                        ),
                      ),
                      Positioned.directional(
                        textDirection: Directionality.of(context),
                        end: 0,
                        bottom: 1,
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://tamweelmisr.com/assets/imges/lang/persons-available-mastoura-a.png',
                          width: AppSize.width * 0.2,
                          height: AppSize.height * 0.15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.height * 0.02,
                ),
                Padding(
                  padding: AppPadding.paddingH005,
                  child: CustomWideButton(
                    title: 'حققي حلمك و قدمي علي قرضك دلوقتي ',
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: AppSize.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
