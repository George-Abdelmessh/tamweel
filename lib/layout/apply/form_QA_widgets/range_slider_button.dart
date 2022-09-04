import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/validators/app_validators.dart';

class QARangeSliderButton extends ConsumerStatefulWidget {
  const QARangeSliderButton({
    super.key,
    required this.data,
    required this.step,
    required this.title,
  });

  final Map data;
  final int step;
  final String title;

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
    final apply = ref.watch(applyStateProvider.notifier);
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
                  apply.setAnswer(
                    widget.step,
                    widget.title,
                    values.round().toString(),
                  );
                },
              ),
            ),
            SizedBox(
              width: AppSize.width * 0.005,
            ),
            SizedBox(
              width: AppSize.width * 0.2,
              child: Form(
                child: customTextFormFieldWithValidator(
                  context,
                  controller: controller,
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => AppValidators.required(value),
                  onEditingComplete: () {
                    if (double.parse(controller.text) <
                            double.parse(widget.data['min'].toString()) ||
                        double.parse(controller.text) >
                            double.parse(widget.data['max'].toString())) {
                      controller.text = widget.data['min'].toString();
                    }
                    // print(controller.text);
                    valueNoti.setValue(double.parse(controller.text));
                    currentSliderValue = double.parse(controller.text);
                    apply.setAnswer(
                      widget.step,
                      widget.title,
                      controller.text,
                    );
                  },
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
    state = state;
    return;
  }
}

final sliderValueProvider = StateNotifierProvider<SliderValue, double>(
  (ref) => SliderValue(),
);
