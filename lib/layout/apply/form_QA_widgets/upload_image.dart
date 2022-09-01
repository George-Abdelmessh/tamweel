import 'package:auto_size_text/auto_size_text.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

final uploadImageProvider = StateProvider<Map<int, Map<String, bool>>>((ref) {
  return {};
});

class QAUploadImage extends HookConsumerWidget {
  QAUploadImage({
    super.key,
    required this.title,
  });
  final String? title;
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final applyStateNotifier = ref.watch(applyStateProvider.notifier);
    final applyState = ref.watch(applyStateProvider);
    return Padding(
      padding: AppPadding.paddingH005.add(AppPadding.paddingV20),
      child: SizedBox(
        width: AppSize.width,
        child: Row(
          children: [
            if (title != null)
              AutoSizeText(
                title!,
                maxLines: 1,
              ),
            const Spacer(),
            if (ref.read(
                      uploadImageProvider,
                    )[applyState.currentStep] !=
                    null &&
                (ref.read(
                      uploadImageProvider,
                    )[applyState.currentStep]![title!] ??
                    false))
              const Icon(
                Icons.check,
                color: AppColor.secondary,
              )
            else
              SizedBox(
                width: AppSize.width * 0.1,
                child: CustomWideButton(
                  background: AppColor.secondary,
                  height: AppSize.height * 0.035,
                  title: '+',
                  onTap: () async {
                    // Pick an image
                    image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      applyStateNotifier
                          .setImage(await MultipartFile.fromFile(image!.path));
                      // set the uploadImageProvider[step]['title'] to true if that step is a valid key
                      if (ref.read(
                            uploadImageProvider,
                          )[applyState.currentStep] ==
                          null) {
                        ref.read(uploadImageProvider)[applyState.currentStep!] =
                            {};
                      }
                      ref.read(uploadImageProvider)[applyState.currentStep]![
                          title!] = true;
                    }
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
