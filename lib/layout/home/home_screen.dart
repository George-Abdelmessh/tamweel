import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/category/category_body.dart';
import 'package:tamweel/layout/home/home_body/home_body.dart';
import 'package:tamweel/layout/setting/setting_body.dart';

import '../../providers/bottom_nav_bar/bottom_nav_bar_provider.dart';
import '../search/search_body.dart';
import 'bottom_nav_bar_items.dart';

class HomeScreen extends HookConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);

  final titleAppBar = [
    'AppBarTitle.HomeTitle'.tr(),
    'AppBarTitle.CategoryTitle'.tr(),
    'AppBarTitle.SearchTitle'.tr(),
    'AppBarTitle.SettingTitle'.tr(),
  ];

  final List listOfScreens = [
    HomeBody(),
    CategoryBody(),
    SearchBody(),
    SettingBody()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.watch(indexProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppBar[index]),
        centerTitle: true,
      ),
      body: listOfScreens[index],
      bottomNavigationBar: BottomNavBarItems(),
    );
  }
}
