import 'package:dio/dio.dart';

abstract class AuthRepository {}

class AuthRepositoryImpl extends AuthRepository {
  final Dio _dio;

  AuthRepositoryImpl(this._dio);
}
