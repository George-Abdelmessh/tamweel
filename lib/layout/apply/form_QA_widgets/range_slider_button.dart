import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_field.dart';

class QARangeSliderButton extends ConsumerStatefulWidget {
  const QARangeSliderButton({super.key, required this.data});

  final Map data;

  @override
  ConsumerState<QARangeSliderButton> createState() =>
      _QARangeSliderButtonState();
}

class _QARangeSliderButtonState extends ConsumerState<QARangeSliderButton> {
  double? currentSliderValue;
  TextEditingController controller = TextEditingController();
  GlobalKey key = GlobalKey();

  @override
  void initState() {
    super.initState();
    currentSliderValue = double.parse(widget.data['min'].toString());
    controller.text =
        double.parse(widget.data['min'].toString()).round().toString();
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(sliderValueProvider);
    final valueNoti = ref.watch(sliderValueProvider.notifier);
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
                  currentSliderValue = value;
                  controller.text = values.round().toString();
                },
              ),
            ),
            SizedBox(
              width: AppSize.width * 0.005,
            ),
            SizedBox(
              width: AppSize.width * 0.2,
              child: Form(
                key: key,
                child: CustomTextFormField(
                  controller: controller,
                  labelText: '',
                  onSubmit: (val) {
                    print(val);
                    valueNoti.state = double.parse(val);
                    currentSliderValue = double.parse(val);
                  },
                  type: TextInputType.number,
                ),
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

  void setValue(double value) {
    state = value;
    return;
  }
}

final sliderValueProvider = StateNotifierProvider<SliderValue, double>(
  (ref) => SliderValue(),
);
