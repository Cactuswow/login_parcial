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

Future<dynamic> postFetchData(String url, dynamic obj) async {
  try {
    Response response = await dio.post(url, data: obj);
    return response.data;
  } catch (e) {
    return false;
  }
}
