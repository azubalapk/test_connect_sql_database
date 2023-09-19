
// ignore_for_file: prefer_constructors_over_static_methods

///
class User {
  ///
  User({this.id, this.username, this.password, this.email, this.createdAt});
  ///
  int? id;
  ///
  String? username;
  ///
  String? password;
  ///
  String? email;
  ///
  DateTime? createdAt;

///
static User userFromJson(dynamic json) => User(
  
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      );
    
///
static Map<String, dynamic> userToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
    
}
