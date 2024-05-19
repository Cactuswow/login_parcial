import 'package:dio/dio.dart';

Dio dio = Dio();

Future<dynamic> getFetchData(String url) async {
  try {
    Response response = await dio.get(url);
    return response.data;
  } catch (e) {
    return [];
  }
}
