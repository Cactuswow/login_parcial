import 'package:dio/dio.dart';

Future<dynamic> getData(String url) async {
  return await Dio().get(url);
}
