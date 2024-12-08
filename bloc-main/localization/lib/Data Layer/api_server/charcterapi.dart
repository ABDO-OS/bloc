import 'package:dio/dio.dart';
import 'package:localization/Data%20Layer/Model/characters/characters.dart';
import 'package:localization/Helpers/components/dio_config.dart';
import 'package:localization/Helpers/observers/Server/endpoint.dart';

// class Charcterapi {
//   late Dio dio;

//   Charcterapi() {
//     dio = dioConfuguratuon.dio;
//   }

//   Future<List<dynamic>> getCharater() async {
//     try {
//       var respond = await dio.get(charactersUrl);
//       return respond.data;
//     } on DioException catch (e) {
//       print(e.message);
//       return [];
//     }
//   }
// }

class Charcterapi {
  late final Dio dio;

  Charcterapi() {
    dio = dioConfuguratuon.dio;
  }

  Future<List<dynamic>> getCharater() async {
    try {
      final response = await dio.get(charactersUrl);
      print('API Response: ${response.data}'); // For debugging
      return response.data;
    } on DioException catch (e) {
      print('Dio Error: ${e.message}');
      print('Error Type: ${e.type}');
      print('Error Response: ${e.response}');
      return [];
    } catch (e) {
      print('Unexpected Error: $e');
      return [];
    }
  }
}
