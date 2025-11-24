// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

import '../../api/data_sources/remote/auth_remote_data_source_impl.dart'
    as _i740;
import '../../api/data_sources/remote/brand_remote_data_source_impl.dart'
    as _i113;
import '../../api/data_sources/remote/cart_remote_data_source_impl.dart'
    as _i406;
import '../../api/data_sources/remote/category_remote_data_source_impl.dart'
    as _i448;
import '../../api/data_sources/remote/product_remote_data_source_impl.dart'
    as _i895;
import '../../api/dio/dio_module.dart' as _i67;
import '../../api/web_services.dart' as _i1069;
import '../../data/data_sources/remote/auth_remote_data_source.dart' as _i865;
import '../../data/data_sources/remote/brand_remote_data_source.dart' as _i114;
import '../../data/data_sources/remote/cart_remote_data_source.dart' as _i489;
import '../../data/data_sources/remote/category_remote_data_source.dart'
    as _i344;
import '../../data/data_sources/remote/product_remote_data_source.dart'
    as _i189;
import '../../data/repositories/auth_repository_impl.dart' as _i895;
import '../../domain/repositories/auth_repository.dart' as _i1073;


import '../../domain/use_cases/login_use_case.dart' as _i471;
import '../../domain/use_cases/register_use_case.dart' as _i479;
import '../../features/ui/auth/login/cubit/login_view_model.dart' as _i245;
import '../../features/ui/auth/register/cubit/register_view_model.dart'
    as _i873;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final getItModule = _$GetItModule();
    gh.singleton<_i361.BaseOptions>(() => getItModule.provideBaseOptions());
    gh.singleton<_i528.PrettyDioLogger>(
        () => getItModule.providePrettyDioLogger());
    gh.singleton<_i361.Dio>(() => getItModule.provideDio(
          gh<_i361.BaseOptions>(),
          gh<_i528.PrettyDioLogger>(),
        ));
    gh.singleton<_i1069.WebServices>(
        () => getItModule.provideWebServices(gh<_i361.Dio>()));
    gh.factory<_i114.BrandRemoteDataSource>(() =>
        _i113.BrandRemoteDataSourceImpl(webServices: gh<_i1069.WebServices>()));
  
    gh.factory<_i489.CartRemoteDataSource>(() =>
        _i406.CartRemoteDataSourceImpl(webServices: gh<_i1069.WebServices>()));
    gh.factory<_i344.CategoryRemoteDataSource>(() =>
        _i448.CategoryRemoteDataSourceImpl(
            webServices: gh<_i1069.WebServices>()));
    gh.factory<_i865.AuthRemoteDataSource>(() =>
        _i740.AuthRemoteDataSourceImpl(webServices: gh<_i1069.WebServices>()));
    gh.factory<_i189.ProductRemoteDataSource>(() =>
        _i895.ProductRemoteDataSourceImpl(
            webServices: gh<_i1069.WebServices>()));
    
   
    gh.factory<_i1073.AuthRepository>(() => _i895.AuthRepositoryImpl(
        authRemoteDataSource: gh<_i865.AuthRemoteDataSource>()));
   
    gh.factory<_i471.LoginUseCase>(
        () => _i471.LoginUseCase(authRepository: gh<_i1073.AuthRepository>()));
    gh.factory<_i479.RegisterUseCase>(() =>
        _i479.RegisterUseCase(authRepository: gh<_i1073.AuthRepository>()));
  
    gh.factory<_i873.RegisterViewModel>(() =>
        _i873.RegisterViewModel(registerUseCase: gh<_i479.RegisterUseCase>()));
   
    gh.factory<_i245.LoginViewModel>(
        () => _i245.LoginViewModel(loginUseCase: gh<_i471.LoginUseCase>()));
       
   
    return this;
  }
}

class _$GetItModule extends _i67.GetItModule {}
