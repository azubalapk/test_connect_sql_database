/// A generic interface for managing users.
library users_data_source;

import 'package:users_data_source/src/models/user.dart';

export 'src/users_data_source.dart';
///
abstract class UsersDataSource {
  ///
  Future<User> create(User user);
  ///
  Future<List<User>> readAll();
  ///
  Future<User?> read(String id);
  ///
  Future<User> update(String id, User todo);
  ///
  Future<void> delete(String id);
}
