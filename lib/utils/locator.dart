import 'package:get_it/get_it.dart';
import 'package:kasir/utils/preferences_util.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  PreferencesUtil? util = await PreferencesUtil.getInstance();
  locator.registerSingleton<PreferencesUtil>(util!);
}