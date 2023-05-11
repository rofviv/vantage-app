import 'package:dio/dio.dart';

import '../repositories/preferences_repository.dart';

class DefaultInterceptor extends Interceptor {
  final PreferencesRepository _preferencesRepository;

  DefaultInterceptor(this._preferencesRepository);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers = {
      'Authorization': 'Bearer ${_preferencesRepository.token}',
    };
    super.onRequest(options, handler);
  }
}
