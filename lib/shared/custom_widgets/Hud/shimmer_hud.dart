import 'package:flutter/material.dart';

///
/// Wrap around any widget that makes an async call to show a modal progress
/// indicator while the async call is in progress.
///
/// HUD=Heads Up Display
///
class ShimmerHUD extends StatelessWidget {
  const ShimmerHUD({
    super.key,
    required this.inAsyncCall,
    this.color = Colors.white,
    required this.shimmerWidget,
    this.offset,
    this.dismissible = false,
    required this.child,
  });

  /// A required [bool]to toggle the loading animation.
  final bool inAsyncCall;

  /// A [Color] object which is assigned to the loading barrier, defaults to grey
  final Color color;

  /// A [Widget] which is shown at the center of the modal loading barrier,
  /// defaults to the standard android spinny animation.
  final Widget shimmerWidget;

  /// An [Offset] object which is applied to the [progressIndicator] when specified.
  final Offset? offset;

  /// A [bool] value which sets the `loading screen can be dismissible by tapping on the loading screen` rule.
  final bool dismissible;

  /// A [Widget] which should be the the widget to be shown behind the loading barrier.
  final Widget child;
  @override
  Widget build(BuildContext context) {
    if (!inAsyncCall) return child;

    Widget layoutShimmerIndicator;
    if (offset == null) {
      layoutShimmerIndicator = Center(child: shimmerWidget);
    } else {
      layoutShimmerIndicator = Positioned(
        left: offset!.dx,
        top: offset!.dy,
        child: shimmerWidget,
      );
    }

    return Stack(
      children: [
        child,
        ModalBarrier(dismissible: dismissible, color: color),
        layoutShimmerIndicator,
      ],
    );
  }
}
