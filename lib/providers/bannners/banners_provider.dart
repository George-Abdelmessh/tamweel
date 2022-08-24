import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/banner/banner_model.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';



final bannersProvider = FutureProvider<List<BannerData>>((ref)  async {
  return  ApiRepo.getHomeBanners();
});
