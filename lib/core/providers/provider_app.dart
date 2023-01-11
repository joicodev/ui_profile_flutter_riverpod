import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_profile_flutter_riverpod/core/constant/global_var.dart';
import 'package:ui_profile_flutter_riverpod/core/models/config_app_model.dart';
import 'package:ui_profile_flutter_riverpod/core/utils.dart';

// Load configApp
final _futureConfigAppProvider = FutureProvider<ConfigAppModel>((ref) async {
  final json = await UtilsApp.loadFromJsonFile(GlobalVariables.nameConfigFile);
  return ConfigAppModel.fromJson(json);
});

// Read value ConfigApp
final configAppProvider = Provider<ConfigAppModel>(
  (ref) => ref.read(_futureConfigAppProvider).asData!.value,
);

Future<ProviderContainer> initializeApp() async {
  final container = ProviderContainer();

  // Initialize call
  await container.read(_futureConfigAppProvider.future);

  return container;
}
