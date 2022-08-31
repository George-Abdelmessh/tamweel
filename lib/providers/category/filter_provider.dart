import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/filter/filter_category.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

// ignore: non_constant_identifier_names
final filterFutureProvider = FutureProvider<List<LoanCard>>((ref) async {
  return ApiRepo.filterCategory();
});
