import 'package:flutter/material.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class SearchLoadingScreen extends StatefulWidget {
  const SearchLoadingScreen({super.key});

  @override
  State<SearchLoadingScreen> createState() => _SearchLoadingScreenState();
}

class _SearchLoadingScreenState extends State<SearchLoadingScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    lowerBound: 0.5,
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: Padding(
          padding: AppPadding.padding10,
          child: const Icon(
            Icons.search,
            size: 100,
            color: AppColor.primary,
          ),
        ),
      ),
    );
  }
}
