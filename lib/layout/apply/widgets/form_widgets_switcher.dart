import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/upload_image.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';

class FormWidgetsSwitcher extends ConsumerWidget {
  const FormWidgetsSwitcher({super.key, required this.formType});

  final int formType;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (formType) {
      case 0:
        return Container();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
      case 5:
        return Container();
      case 6:
        return Container();
      case 7:
        return Container();
      case 8:
        return Container();
      case 9:
        return Container();
      case 10:
        return Container();
      case 11:
        return Container();
      case 12:
        return Container();
      case 13:
        return Container();
      case 14:
        return Container();
      case 15:
        return Container();
      case 16:
        return Container();
      case 17:
        return Container();
      case 18:
        return Container();
      case 19:
        return Container();
      case 20:
        return Container();
      case 21:
        return Container();
      case 22:
        return QAUploadImage(
          //TODO: fix
          step: ref.read(applyStateProvider).currentStep!,
          index: ref.read(applyStateProvider).currentStep!,
        );
      case 23:
        return Container();
      case 24:
        return Container();
      case 25:
        return Container();
      case 26:
        return Container();
      case 27:
        return Container();
      default:
        return Container();
    }
  }
}
