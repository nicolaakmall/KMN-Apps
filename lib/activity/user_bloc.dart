import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is FetchUser) {
      try {
        final users = await _fetchUsers(event.page);
        yield UserLoaded(users: users);
      } catch (_) {
        yield UserError();
      }
    }
  }

  Future<List<String>> _fetchUsers(int page) async {
    final response =
        // await http.get('https://reqres.in/api/users?page=$page&per_page=5' as Uri);
        await http.get('https://reqres.in/api/users?page=1&per_page=12' as Uri);
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<dynamic> usersData = jsonData['data'];
      final List<String> users =
          usersData.map((user) => user['email'].toString()).toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
