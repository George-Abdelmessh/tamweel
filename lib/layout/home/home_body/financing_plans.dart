import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/home/home_body/financing_plans_card.dart';
import 'package:tamweel/providers/financing_program/financing_program_provider.dart';

import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_width.dart';
import 'package:tamweel/shared/network/end_points.dart';

class FinancingPlans extends ConsumerWidget {
  FinancingPlans({super.key});
  final ScrollController _scrollController = ScrollController();

  /// auto scroll function
  // void animateToMaxMin(double min, double max, double direction, int second) {
  //   _scrollController
  //       .animateTo(max, duration: Duration(seconds: second), curve: Curves.linear)
  //       .then((value) {
  //     direction = direction == max ? min : max;
  //     animateToMaxMin(max, min, direction, second);
  //   });
  // }
  /// calling function
  // animateToMaxMin(
  // _scrollController.position.minScrollExtent,
  // _scrollController.position.maxScrollExtent,
  // _scrollController.position.maxScrollExtent,
  // 10);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final programs = ref.watch(programsProvider);
    return programs.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (snapshot) {
        if (snapshot.isEmpty) {
          return Container();
        } else {
          return SizedBox(
            height: AppSize.height * 0.3,
            width: double.infinity,
            child: ListView.separated(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => FinancingPlansCard(
                name: snapshot[index].name!,
                image: '${AppEndPoints.baseUrl}/${snapshot[index].logo!}',
              ),
              separatorBuilder: (context, index) => CustomSizedBoxWidth(
                width: AppSize.width * 0.015,
              ),
              itemCount: snapshot.length,
            ),
          );
        }
      },
    );
  }
}
