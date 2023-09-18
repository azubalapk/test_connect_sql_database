import 'package:mysql1/mysql1.dart';
import 'package:users_data_source/src/models/user.dart';
import 'package:users_data_source/users_data_source.dart';

///
class UsersDataSourceImpl extends UsersDataSource {
  

  @override
  Future<User> create(User user) async {

    
    final settings = ConnectionSettings(
    // ignore: avoid_redundant_argument_values
    host: 'localhost',
    // ignore: avoid_redundant_argument_values
    port: 3306,
    user: 'root',
    password: 'G1+N(gdK1(6',
    db: 'test_users',
  );

  final conn = await MySqlConnection.connect(settings);

  
  

  // ignore: unused_local_variable, lines_longer_than_80_chars
  final result = await conn.query('INSERT INTO users (username, password, email, created_at) VALUES (${user.username}, ${user.password}, ${user.email}, now())');

    
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) async {
    
    throw UnimplementedError();
  }

  @override
  Future<User?> read(String id) async {
    
    throw UnimplementedError();
  }

  @override
  Future<List<User>> readAll() async {
    
    throw UnimplementedError();
  }

  @override
  Future<User> update(String id, User todo) async {
    
    throw UnimplementedError();
  }
}
