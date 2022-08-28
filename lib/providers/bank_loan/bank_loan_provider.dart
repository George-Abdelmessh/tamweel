import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/bank_loans/bank_loans_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';


final bankLoanProvider = FutureProvider<List<BankData>>((ref) {
  return ApiRepo.getBankLoans();
});
