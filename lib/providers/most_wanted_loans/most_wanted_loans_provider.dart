import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

final mostWantedLoansProvider = FutureProvider<List<LoanData>>((ref) {
  return ApiRepo.getMostWantedLoans();
});
