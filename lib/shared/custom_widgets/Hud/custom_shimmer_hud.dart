import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/hud/hud_provider.dart';
import 'package:tamweel/shared/custom_widgets/Hud/shimmer_hud.dart';

class CustomShimmerHudWidget extends ConsumerStatefulWidget {
  const CustomShimmerHudWidget({
    super.key,
    required this.child,
    required this.shimmerWidget,
  });

  final Widget child;
  final Widget shimmerWidget;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomHudWidgetState();
}

class _CustomHudWidgetState extends ConsumerState<CustomShimmerHudWidget> {
  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(isLoadingProvider);

    return ShimmerHUD(
      inAsyncCall: isLoading,
      shimmerWidget: widget.shimmerWidget,
      child: widget.child,
    );
  }
}
