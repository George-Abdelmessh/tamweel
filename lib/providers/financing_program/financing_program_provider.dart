import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/ad/ad_model.dart';
import 'package:tamweel/models/financing_program/financing_program_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

class FinancingProgramNotifier
    extends StateNotifier<List<FinancingProgramData>> {
  FinancingProgramNotifier() : super([]);

  Future<List<FinancingProgramData>> getData() async {
    // ignore: join_return_with_assignment
    state = await ApiRepo.getFinancingPrograms();
    return state;
  }
}

final adsProvider =
    StateNotifierProvider<FinancingProgramNotifier, List<FinancingProgramData>>(
        (ref) {
  return FinancingProgramNotifier();
});
