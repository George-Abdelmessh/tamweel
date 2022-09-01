import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:tamweel/providers/bottom_nav_bar/bottom_nav_bar_provider.dart';
import 'package:tamweel/shared/style/app_color.dart';

class BottomNavBarItems extends HookConsumerWidget {
  BottomNavBarItems({super.key});

  final items = [
    BottomNavyBarItem(
      icon: const Icon(Icons.home),
      title: Text('NavBar.Home'.tr()),
      activeColor: AppColor.primary,
      inactiveColor: Colors.black,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.category),
      title: Text('NavBar.Category'.tr()),
      activeColor: AppColor.primary,
      inactiveColor: Colors.black,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.search),
      title: Text('NavBar.Search'.tr()),
      activeColor: AppColor.primary,
      inactiveColor: Colors.black,
    ),
    BottomNavyBarItem(
      icon: const Icon(Icons.settings),
      title: Text('NavBar.Settings'.tr()),
      activeColor: AppColor.primary,
      inactiveColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int index = ref.watch(indexProvider);
    return BottomNavyBar(
      itemCornerRadius: 20.0,
      showElevation: false,
      items: items,
      selectedIndex: index,
      onItemSelected: (index) =>
          ref.read(indexProvider.notifier).setIndex(index),
      animationDuration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
