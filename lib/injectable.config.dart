// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/services_cubit/auth_service/auth_service_cubit.dart' as _i7;
import 'application/services_cubit/static_service/static_service_cubit.dart'
    as _i8;
import 'domain/auth/auth_service_interface.dart' as _i3;
import 'domain/static/static_service_interface.dart' as _i5;
import 'infrastructure/auth/auth_service.dart' as _i4;
import 'infrastructure/static/static_service.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AuthServiceInterface>(() => _i4.AuthService());
  gh.lazySingleton<_i5.StaticServiceInterface<dynamic>>(
      () => _i6.StaticService());
  gh.factory<_i7.AuthServiceCubit>(
      () => _i7.AuthServiceCubit(get<_i3.AuthServiceInterface>()));
  gh.factory<_i8.StaticServiceCubit>(
      () => _i8.StaticServiceCubit(get<_i5.StaticServiceInterface<dynamic>>()));
  return get;
}
