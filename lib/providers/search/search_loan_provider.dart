import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

final searchFutureProvider = FutureProvider<List<LoanData>>((ref) async {
  final String searchquery = ref.watch(searchPhraseProvider);
  return ApiRepo.search(query: searchquery);
});
final searchPhraseProvider = StateProvider((ref) => '');
