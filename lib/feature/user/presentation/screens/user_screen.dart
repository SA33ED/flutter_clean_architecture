import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/feature/user/presentation/cubit/user_cubit.dart';
import 'package:flutter_clean_architecture/feature/user/presentation/cubit/user_state.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: state is GetUserSuccessfully
                ? Text(state.user.name)
                : state is GetUserFailure
                    ? Text(state.errMessage)
                    : const CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
