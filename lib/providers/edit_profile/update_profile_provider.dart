import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/edit_profile/edit_country_selector_provider.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';

class UpdateProfileNotifier extends StateNotifier<void> {
  UpdateProfileNotifier(this.ref) : super(0);

  final StateNotifierProviderRef<UpdateProfileNotifier, void> ref;
  void get step => state;

  Future<void> updateProfile({
    required int id,
    required String email,
    required String password,
    required String name,
    required String phone,
    required String address,
    required String nationalId,
    required String governorate,
    required String city,
    required int isMale,
    required EditMaritalStatus userMaritalStatus,
  }) async {
    final maritalStatus = userMaritalStatus.index + 1;
    return ApiRepo.updateUserData(
      id: id,
      email: email,
      password: password,
      name: name,
      nationalId: nationalId,
      phone: phone,
      address: address,
      country: governorate,
      city: city,
      maritalStatus: maritalStatus,
      gender: isMale,
    );
  }
}


final updateProfileProvider =
StateNotifierProvider<UpdateProfileNotifier, void>(
      (ref) => UpdateProfileNotifier(ref),
);
