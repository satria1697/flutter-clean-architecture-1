import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four/domain/model/user.dart';
import 'package:four/module/user/cubit/user_cubit.dart';
import 'package:four/module/user_list/cubit/user_list_cubit.dart';
import 'package:four/router/router.dart';

class UserListPage extends StatelessWidget {
  UserListPage({Key? key}) : super(key: key);
  final UserListCubit _userListCubit = UserListCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<UserListCubit>(
        create: (context) {
          _userListCubit.getData();
          return _userListCubit;
        },
        child: BlocBuilder<UserListCubit, UserListState>(
          builder: (context, state) {
            if (state.dataState == DataState.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                User user = state.data[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      onPressed: () async {
                        await context.router.push(UserRoute());
                        _userListCubit.getData();
                      },
                      child: Text(user.name),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
