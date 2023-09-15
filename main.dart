import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  // ignore: unused_local_variable
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      // ignore: avoid_redundant_argument_values
      host: 'localhost',
      // ignore: avoid_redundant_argument_values
      port: 3306,
      user: 'root',
      password: 'G1+N(gdK1(6',
      db: 'test_users',
    ),
  );

  final results = await conn.query('SELECT * FROM users WHERE id = 1;');

  print(results.toString());
}
