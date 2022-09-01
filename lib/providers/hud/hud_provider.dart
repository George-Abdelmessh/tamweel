import 'package:hooks_riverpod/hooks_riverpod.dart';

class IsLoadingNotifier extends StateNotifier<bool> {
  IsLoadingNotifier() : super(false);

  void show() => state = true;
  void hide() => state = false;
}

final isLoadingProvider = StateNotifierProvider<IsLoadingNotifier, bool>((ref) {
  return IsLoadingNotifier();
});
