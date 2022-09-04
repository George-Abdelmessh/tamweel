import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

class QARangeSliderButton extends ConsumerStatefulWidget {
  const QARangeSliderButton({super.key, required this.data});

  final Map data;

  @override
  ConsumerState<QARangeSliderButton> createState() =>
      _QARangeSliderButtonState();
}

class _QARangeSliderButtonState extends ConsumerState<QARangeSliderButton> {
  double? currentSliderValue;

  @override
  void initState() {
    super.initState();
    currentSliderValue = double.parse(widget.data['min'].toString());
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(sliderValueProvider);
    final valueNoti = ref.watch(sliderValueProvider.notifier);
    currentSliderValue = value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.data['title'].toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        SizedBox(
          height: AppSize.height * 0.01,
        ),
        Row(
          children: [
            Expanded(
              child: Slider(
                min: double.parse(widget.data['min'].toString()),
                max: double.parse(widget.data['max'].toString()),
                value: currentSliderValue!,
                onChanged: (values) {
                  /// ToDo Insert data into  answer provider with round function
                  valueNoti.state = values;
                },
              ),
            ),
            SizedBox(
              width: AppSize.width * 0.01,
            ),
            Text(
              value.round().toString(),
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SliderValue extends StateNotifier<double> {
  SliderValue() : super(0.0);

  void setIndex(double value) {
    state = value;
    return;
  }
}

final sliderValueProvider = StateNotifierProvider<SliderValue, double>(
  (ref) => SliderValue(),
);
