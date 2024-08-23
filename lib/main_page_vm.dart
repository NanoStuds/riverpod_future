import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_future/data/postal_code.dart';
import 'package:riverpod_future/data/read_postal_code.dart';
import 'package:riverpod_future/main_logic.dart';

final _logicProvider = Provider<Logic>((ref) => Logic());
final _postalCodeProvider = StateProvider<String>((ref) => '');

AutoDisposeFutureProviderFamily<PostalCode, String> _apiFamilyProvider =
    FutureProvider.autoDispose
        .family<PostalCode, String>((ref, postalcode) async {
  Logic logic = ref.watch(_logicProvider);
  if (!logic.willProceed(postalcode)) {
    return PostalCode.empty;
  }
  return await logic.getPostalCode(postalcode);
});

class MainPageVm {
  late final WidgetRef _ref;
  String get postalcode => _ref.watch(_postalCodeProvider);

  AsyncValue<PostalCode> postalCodeWithFamily(String postcode) =>
      _ref.watch(_apiFamilyProvider(postcode));

  AsyncValue<PostalCode> postalCodeWithGenerator(String postcode) =>
      _ref.watch(readPostalCodeProvider(postalCode: postcode));

  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  void onPostalCodeChanged(String postalcode) {
    _ref.read(_postalCodeProvider.notifier).update((state) => postalcode);
  }
}
