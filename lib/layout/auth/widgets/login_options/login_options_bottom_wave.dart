import 'package:flutter/cupertino.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginOptionsBottomWave extends StatelessWidget {
  const LoginOptionsBottomWave({super.key});

  static final _colors = [
    [
      AppColor.primaryDarker,
      AppColor.primaryDarker.withOpacity(0.5),
    ],
    [
      AppColor.secondary,
      AppColor.secondary.withOpacity(0.5),
    ],
    [
      AppColor.primary,
      AppColor.primary,
    ],
  ];

  static const _durations = [
    10000,
    9000,
    8000,
  ];

  static const _heightPercentages = [
    0.865,
    0.87,
    0.88,
  ];
  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        // colors: _colors,
        durations: _durations,
        heightPercentages: _heightPercentages,
        gradients: _colors,
        gradientBegin: Alignment.bottomLeft,
        gradientEnd: Alignment.topRight,
      ),
      backgroundColor: AppColor.transparent,
      size: Size.infinite,
      waveAmplitude: 0,
    );
  }
}
