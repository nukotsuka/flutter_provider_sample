import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_provider_sample/domain/request.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpClient {
  // MARK: - Const

  static const int _connectTimeout = 15000;
  static const int _sendTimeout = 15000;
  static const int _receiveTimeout = 3000;

  // MARK: - Variables

  final String baseUrl;
  final bool shouldPrettyPrint;

  Dio get _dio {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: _connectTimeout,
      sendTimeout: _sendTimeout,
      receiveTimeout: _receiveTimeout,
      contentType: 'application/json',
      responseType: ResponseType.json,
    );

    final dio = Dio(options);

    if (shouldPrettyPrint) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        logPrint: (object) => log('$object'),
      ));
    }

    return dio;
  }

  // MARK: - Constructor

  const HttpClient({
    required this.baseUrl,
    this.shouldPrettyPrint = true,
  });

  // MARK: - Methods

  Future<Response<dynamic>?> send(Request request) async {
    final dio = _dio;

    dio.options.headers.addAll(request.headers ?? {});

    Response<dynamic> response;
    try {
      switch (request.method) {
        case HTTPMethod.post:
          if (request.data.runtimeType == FormData) {
            response = await dio.post<dynamic>(
              request.path,
              data: request.data,
            );
          } else {
            response = await dio.post<dynamic>(
              request.path,
              data: json.encode(request.data),
            );
          }
          break;
        case HTTPMethod.get:
          response = await dio.get<dynamic>(
            request.path,
            queryParameters: request.data,
          );
          break;
      }
    } on DioError catch (error) {
      return error.response; // Response<dynamic>, nullable
    } finally {
      dio.close();
    }

    return response;
  }
}
