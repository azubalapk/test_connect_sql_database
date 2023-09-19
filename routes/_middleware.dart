import 'package:dart_frog/dart_frog.dart';

import 'package:users_data_source/users_data_source.dart';

final _dataSource = UsersDataSourceImpl();

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<UsersDataSource>((_) => _dataSource));
}
