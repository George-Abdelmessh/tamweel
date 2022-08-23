import 'package:flutter/material.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: AppPadding.padding20 * 2,
              child: TextFormField(
                cursorColor: AppColor.primary,
                controller: searchController,
                decoration: InputDecoration(
                  focusColor: AppColor.primary,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: AppColor.primary,
                  suffixIcon: const Icon(
                    Icons.search,
                    color: AppColor.primary,
                  ),
                  hintText: 'بحث',
                ),
              ),
            ),
            Expanded(
              child: Center(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
