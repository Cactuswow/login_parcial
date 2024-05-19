class User {
  final String id;
  final String email;
  final String password;
  final String role;
  final String imageUrl;
  final String name;

  const User({
    required this.id,
    required this.email,
    required this.password,
    required this.role,
    required this.imageUrl,
    required this.name,
  });

  factory User.fromJson(dynamic json) {
    final id = json["id"];
    final email = json["email"];
    final password = json["password"];
    final role = json["role"];
    final imageUrl = json["avatar"];
    final name = json["name"];

    return User(
      id: "$id",
      email: email,
      password: password,
      role: role,
      imageUrl: imageUrl,
      name: name,
    );
  }

  @override
  String toString() {
    return "$id $email $password $role $imageUrl";
  }
}
