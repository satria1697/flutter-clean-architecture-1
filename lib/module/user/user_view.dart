import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four/module/user/cubit/user_cubit.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);
  final UserCubit _userCubit = UserCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<UserCubit>(
        create: (context) {
          _userCubit.getData();
          return _userCubit;
        },
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state.dataState == DataState.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: Text(state.data?.name ?? "")),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.red)),
                  onPressed: () => _userCubit.getData(),
                  child: const Text(
                    'Get Data',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
