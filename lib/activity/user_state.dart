part of 'user_bloc.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoaded extends UserState {
  final List<String> users;

  UserLoaded({required this.users});
}

class UserError extends UserState {}
