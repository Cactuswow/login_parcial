import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/models/user.dart';
import 'package:login_parcial/services/fetch_data.dart';

final registeredUsersProvider = StateProvider((ref) => <User>[]);
final userLoggedProvider = StateProvider<User?>((ref) => null);
final isFetchingUsersProvider = StateProvider((ref) => false);
const baseUrl = "http://localhost:5000/";

Future<List<User>> getRegisteredUsersApi(List<User> registeredUsers) async {
  if (registeredUsers.isNotEmpty) return registeredUsers;

  final List<dynamic> newUsers = await getFetchData("${baseUrl}user");

  return newUsers.map((json) => User.fromJson(json)).toList();
}

Future<dynamic> postUser(dynamic obj) async {
  return await postFetchData("${baseUrl}user", obj);
}
