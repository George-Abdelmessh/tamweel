import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/ad/ad_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

class AdNotifier extends StateNotifier<List<AdData>> {
  AdNotifier() : super([]);

  Future<List<AdData>> getData(BuildContext context) async {
    print('provider');
    state = await ApiRepo.getAds(context);
    print(state[0].image);
    return state;
  }
}

final adsProvider = StateNotifierProvider<AdNotifier, List<AdData>>((ref) {
  return AdNotifier();
});
