import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/databases/cache/cache_helper.dart';
import 'package:flutter_clean_architecture/feature/user/presentation/cubit/user_cubit.dart';
import 'package:flutter_clean_architecture/feature/user/presentation/screens/user_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => UserCubit()..eitherFailureOrUser(5),
        child: const UserScreen(),
      ),
    );
  }
}
