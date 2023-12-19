// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/home_screen_bloc/home_screen_bloc.dart' as _i3;
import '../../application/start_screen_bloc/start_screen_bloc.dart' as _i6;
import '../../domain/home_screen/home_screen_services.dart' as _i4;
import '../../infrastructure/home_screen/home_screen_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.HomeScreenBloc>(() => _i3.HomeScreenBloc());
  gh.lazySingleton<_i4.HomeScreenServices>(() => _i5.HomeScreenRepository());
  gh.factory<_i6.StartScreenBloc>(
      () => _i6.StartScreenBloc(get<_i4.HomeScreenServices>()));
  return get;
}