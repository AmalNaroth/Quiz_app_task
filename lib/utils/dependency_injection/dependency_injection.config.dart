// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/home_screen_bloc/home_screen_bloc.dart' as _i7;
import '../../application/start_screen_bloc/start_screen_bloc.dart' as _i8;
import '../../domain/home_screen/home_screen_services.dart' as _i3;
import '../../domain/home_screen/start_screen_services.dart' as _i5;
import '../../infrastructure/home_screen/home_screen_repository.dart' as _i4;
import '../../infrastructure/start_screen/start_screen_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.HomeScreenServices>(() => _i4.HomeScreenRepository());
  gh.lazySingleton<_i5.StartScreenServices>(() => _i6.HomeScreenRepository());
  gh.factory<_i7.HomeScreenBloc>(
      () => _i7.HomeScreenBloc(get<_i3.HomeScreenServices>()));
  gh.factory<_i8.StartScreenBloc>(() => _i8.StartScreenBloc(
        get<_i5.StartScreenServices>(),
        get<_i3.HomeScreenServices>(),
      ));
  return get;
}
