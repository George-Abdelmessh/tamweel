import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/financing_program/financing_program_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';


final programsProvider =
    FutureProvider<List<FinancingProgramData>>(
        (ref) async {
  return ApiRepo.getFinancingPrograms();
});

