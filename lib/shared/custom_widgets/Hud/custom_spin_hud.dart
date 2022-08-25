import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tamweel/providers/hud/hud_provider.dart';
import 'package:tamweel/shared/style/app_color.dart';


class CustomSpinHudWidget extends ConsumerStatefulWidget {
  const CustomSpinHudWidget({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomHudWidgetState();
}

class _CustomHudWidgetState extends ConsumerState<CustomSpinHudWidget> {
  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(isLoadingProvider);

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      progressIndicator: const CircularProgressIndicator(
        color: AppColor.secondary,
      ),
      blur: 1,
      child: widget.child,
    );
  }
}
