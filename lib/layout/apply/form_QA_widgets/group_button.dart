import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class QAGroupButton extends ConsumerStatefulWidget {
  const QAGroupButton({super.key, required this.data});

  final Map data;

  @override
  ConsumerState<QAGroupButton> createState() => _QAGroupButtonState();
}

class _QAGroupButtonState extends ConsumerState<QAGroupButton> {
  final GroupButtonController _controller = GroupButtonController();

  final requiredWidgetsProvider =
      StateNotifierProvider.autoDispose<RequiredWidgets, Widget>(
    (ref) => RequiredWidgets(),
  );

  @override
  void initState() {
    super.initState();
   // _controller.selectIndex(ref.read(_indexProvider));
    /// ToDo implement switch case

    ref.read(requiredWidgetsProvider.notifier)
        .setRequiredWidgets(const Text('data'));
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(_indexProvider);
    final selectedIndexNoti = ref.watch(_indexProvider.notifier);
    final requiredWidgets = ref.watch(requiredWidgetsProvider.notifier);
    final apply = ref.watch(applyStateProvider.notifier);
    return Column(
      crossAxisAlignment: widget.data['options'].length == 2
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          widget.data['title'].toString(),
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
            /// ToDo Apply answer
            // apply.setAnswer(
            //   widget.step,
            //   widget.title,
            //   values.round().toString(),
            // );
            return null;
          },
          buttons: widget.data['options'] as List<Object?>,
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
        if (widget.data["childEnable"] == selectedIndex)
          requiredWidgets.widget
        else
          Container(),
      SizedBox(
        height: AppSize.height * 0.02,
      ),
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
