import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/category/loans_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

// ignore: non_constant_identifier_names
final LoanFutureProvider = FutureProvider<List<Data>>((ref) async {
  return ApiRepo.getLoans();
});
