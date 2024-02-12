import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'user_bloc.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Screen'),
      ),
      body: BlocProvider(
        create: (context) {
          var userBloc = UserBloc();
          userBloc.on<FetchUser>((event, emit) {
            if (event is FetchUser) {
              // Handle FetchUser event here
              // print('Fetching users for page: ${event.page}');
            }
          });
          userBloc.add(FetchUser(page: 1)); // Trigger initial data loading
          return userBloc;
        },
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserInitial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is UserLoaded) {
              return ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.users[index]),
                  );
                },
              );
            } else if (state is UserError) {
              return const Center(child: Text('Failed to load users'));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
