import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

class ApplyLoanRequestNotifier extends StateNotifier<void> {
  ApplyLoanRequestNotifier(this.ref) : super(0);

  final StateNotifierProviderRef<ApplyLoanRequestNotifier, void> ref;

  Future<void> applyLoanRequest({
    required int userId,
    required int loanId,
    required Map<dynamic,dynamic> steps,
    required List images,
  }) async {
    return ApiRepo.applyLoanRequest(
      userId: userId,
      loanId: loanId,
      steps: steps,
      images: images,
    );
  }
}

final applyLoanRequestProvider =
    StateNotifierProvider<ApplyLoanRequestNotifier, void>(
  (ref) => ApplyLoanRequestNotifier(ref),
);
