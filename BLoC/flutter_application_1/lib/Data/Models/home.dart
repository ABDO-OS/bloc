import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Business%20Logic/bloc/app_theme_bloc.dart';
import 'package:flutter_application_1/Business%20Logic/cubit/app_theme_cubit.dart';
import 'package:flutter_application_1/Data/Models/Enums/themestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String internet = "___";

  // void InitState() {
  //   super.initState();
  //   BlocProvider.of<ConnectivityCubitCubit>(context).checkConnectivity();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: FloatingActionButton(
      //         onPressed: () {
      //           BlocProvider.of<NameStateBloc>(context).add(fullnameevent());
      //         },
      //         child: Text('full name'),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 30,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: FloatingActionButton(
      //         onPressed: () {
      //           BlocProvider.of<NameStateBloc>(context).add(clearnameevent());
      //         },
      //         child: Text("clear name"),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 30,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       child: FloatingActionButton(
      //         onPressed: () {
      //           BlocProvider.of<NameStateBloc>(context).add(resetnameevent());
      //         },
      //         child: Text("reset name"),
      //       ),
      //     ),
      //   ],
      // ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<AppThemeCubit>(context)
                    .changeTheme(Themestate.Light);
              },
              child: Text("Light Theme")),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<AppThemeCubit>(context)
                    .changeTheme(Themestate.Dark);
              },
              child: Text("Dark Theme")),
        ],
      ),
    );
  }
}
