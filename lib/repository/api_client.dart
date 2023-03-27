import 'package:dio/dio.dart';
import 'package:widget_example/model/superheros.dart';

class ApiClient {
  Future<List<Superheros>?> fetchList() async {
    final dio = Dio();
    const url = 'https://protocoderspoint.com/jsondata/superheros.json';
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      try {
        final data = response.data['superheros'] as List;
        final list = data.map((e) => Superheros.fromJson(e)).toList();
        return list;
      } catch (e) {
        throw e;
      }
    }
  }
}
