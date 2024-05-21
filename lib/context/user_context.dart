import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_parcial/models/user.dart';
import 'package:login_parcial/services/fetch_data.dart';

final registeredUsersProvider = StateProvider((ref) => <User>[]);
final userLoggedProvider = StateProvider<User?>((ref) => null);
final isFetchingUsersProvider = StateProvider((ref) => false);

Future<List<User>> getRegisteredUsersApi(List<User> registeredUsers) async {
  if (registeredUsers.isNotEmpty) return registeredUsers;

  final List<dynamic> newUsers =
      await getFetchData("https://api.escuelajs.co/api/v1/users");

  return newUsers.map((json) => User.fromJson(json)).toList();
}
