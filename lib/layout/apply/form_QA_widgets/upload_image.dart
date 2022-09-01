import 'package:auto_size_text/auto_size_text.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/network/remote/dio_helper.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class QAUploadImage extends HookConsumerWidget {
  QAUploadImage({
    super.key,
    required this.title,
  });
  final String? title;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            SizedBox(
              width: AppSize.width * 0.2,
              child: CustomWideButton(
                background: AppColor.secondary,
                height: AppSize.height * 0.035,
                title: 'Pick Image',
                onTap: () async {
                  // Pick an image
                  final XFile? pickedFile =
                      await _picker.pickImage(source: ImageSource.gallery);
                  if (pickedFile != null) {
                    final FormData formData = FormData.fromMap({
                      'image[]': [
                        await MultipartFile.fromFile(pickedFile.path),
                        await MultipartFile.fromFile(pickedFile.path),
                        await MultipartFile.fromFile(pickedFile.path),
                      ],
                      'steps': {
                        [
                          {
                            'form': [
                              {
                                'title': 'soret el beta2a',
                                'answer': 'test post request'
                              }
                            ]
                          }
                        ]
                      }
                    });
                    DioHelper.dio!.post('loan/request', data: formData);
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
