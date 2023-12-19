import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/utils/dependency_injection/dependency_injection.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureInjection() async {
  await $initGetIt(getIt, environment: Environment.prod);
}