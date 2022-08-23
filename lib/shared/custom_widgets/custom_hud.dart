import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tamweel/shared/style/app_color.dart';

class IsLoadingNotifier extends StateNotifier<bool> {
  IsLoadingNotifier() : super(false);

  void show() => state = true;
  void hide() => state = false;
}

final isLoadingProvider = StateNotifierProvider<IsLoadingNotifier, bool>((ref) {
  return IsLoadingNotifier();
});

class CustomHudWidget extends ConsumerStatefulWidget {
  const CustomHudWidget({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomHudWidgetState();
}

class _CustomHudWidgetState extends ConsumerState<CustomHudWidget> {
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
