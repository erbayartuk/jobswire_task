import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobswire_bootcamp/view/home/homepage.dart';
import 'package:jobswire_bootcamp/viewModel/homepage_cubit/homepage_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: BlocProvider(
        create: (context) => HomepageCubit(),
        child: HomePage(),
      ),
    );
  }
}
