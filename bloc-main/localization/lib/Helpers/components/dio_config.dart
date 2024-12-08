import 'package:dio/dio.dart';
import 'package:localization/Helpers/observers/Server/server.dart';

// class dioConfuguratuon {
//   static BaseOptions options = BaseOptions(
//     baseUrl: serverUrl + api + v2,
//     sendTimeout: Duration(milliseconds: 3 * 1000),
//     receiveTimeout: Duration(milliseconds: 3 * 1000),
//     connectTimeout: Duration(milliseconds: 3 * 1000),
//   );
//   static late Dio dio = Dio(options);
// }

class DioConfiguration {
  late Dio _dio;

  DioConfiguration() {
    _dio = Dio(
      BaseOptions(
        baseUrl: serverUrl + api + v2, // Replace with your actual base URL
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        receiveDataWhenStatusError: true,
      ),
    );

    // Add interceptors if needed
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  Dio get dio => _dio;
}

// Create a singleton instance
final dioConfuguratuon = DioConfiguration();
