import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/ad/ad_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';


final adsProvider = FutureProvider<List<AdData>>((ref) {
   return ApiRepo.getAds();
});
