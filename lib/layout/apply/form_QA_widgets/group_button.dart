import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class QAGroupButton extends ConsumerWidget {
  QAGroupButton({super.key, required this.data});

  final GroupButtonController _controller = GroupButtonController();
  final Map data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(_indexProvider);
    final selectedIndexNoti = ref.watch(_indexProvider.notifier);
    final requiredWidgets = ref.watch(_requiredWidgetsProvider.notifier);
    return Column(
      crossAxisAlignment: data['options'].length == 2
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          data['title'].toString(),
          style: TextStyle(
            fontSize: AppSize.width * 0.043,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: AppSize.height * 0.015,
        ),
        GroupButton(
          controller: _controller,
          onSelected: (object, index, isSelected) {
            selectedIndexNoti.setIndex(index);
            if (data["childEnable"] == selectedIndex) {
              /// ToDo implement switch case
              requiredWidgets.setRequiredWidgets(const Text('data'));
            }
            return null;
          },
          buttons: data['options'] as List<Object?>,
          buttonBuilder: (selected, value, context) {
            return Container(
              width: AppSize.width * 0.2,
              height: AppSize.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: AppRadius.radius20,
                color: selected ? AppColor.secondary : AppColor.grey,
              ),
              child: Center(
                child: FittedBox(
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      color: selected ? AppColor.white : AppColor.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: AppSize.height * 0.02,
        ),
        if (data["childEnable"] == selectedIndex)
          requiredWidgets.widget
        else
          Container(),
      ],
    );
  }
}

class SetIndex extends StateNotifier<int> {
  SetIndex() : super(0);

  void setIndex(int index) {
    state = index;
    return;
  }

  @override
  set state(int index) {
    super.state = index;
  }
}

final _indexProvider =
    StateNotifierProvider<SetIndex, int>((ref) => SetIndex());

class RequiredWidgets extends StateNotifier<Widget> {
  RequiredWidgets() : super(Container());

  Widget widget = Container();

  void setRequiredWidgets(Widget value) {
    widget = value;
    return;
  }
}

final _requiredWidgetsProvider = StateNotifierProvider<RequiredWidgets, Widget>(
  (ref) => RequiredWidgets(),
);
