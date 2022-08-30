import 'package:easy_localization/easy_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/edit_profile/edit_country_selector_provider.dart';

/// Provides user gender in edit process
final editGenderProvider = StateProvider.autoDispose((ref) => 'Auth.Male'.tr());
// Provides user marital status in signup process
final editMaritalStatusProvider =
    StateProvider.autoDispose((ref) => EditMaritalStatus.married);
