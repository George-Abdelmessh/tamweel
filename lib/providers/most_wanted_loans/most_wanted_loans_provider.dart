import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/most_wanted_loans/most_wanted_loan_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

final mostWantedLoansProvider = FutureProvider<List<MostWantedLoanData>>((ref) {
  return ApiRepo.getMostWantedLoans();
});
