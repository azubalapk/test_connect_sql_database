import 'dart:async';
import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:users_data_source/src/models/user.dart';
import 'package:users_data_source/users_data_source.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
  final dataSource = context.read<UsersDataSource>();
  final todos = await dataSource.readAll();
  return Response.json(body: todos);
}

Future<Response> _post(RequestContext context) async {
  final dataSource = context.read<UsersDataSource>();

  final jsonData = await context.request.json();

  final todo = User.userFromJson(jsonData);

  return Response.json(
    statusCode: HttpStatus.created,
    body: await dataSource.create(todo),
  );
}
