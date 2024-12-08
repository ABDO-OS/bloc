import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Data%20Layer/Model/Layout/layout.dart';
import 'package:localization/Helpers/Route/routes.dart';
import 'package:localization/business%20logic/characters/bloc/characters_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userID = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<CharactersBloc, CharactersState>(
        listener: (context, state) {
          if (state is CharactersLoadedState) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LayoutScreen()));
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/d4af32dda6440ae6eae3ade9a2dca53e.jpg"),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Title(
                      child: Text(
                        "WELCOME BACK",
                        style: TextStyle(fontSize: 40),
                      ),
                      color: Colors.white,
                    ),
                    Title(
                      child: Text(
                        "Login to the GOT WORLD",
                        style: TextStyle(fontSize: 15),
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
                TextField(
                  controller: userID,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    userID.text = value;
                  },
                  onSubmitted: (value) {
                    userID.text = value;
                  },
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter the user id",
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 42, 42, 42)),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(15),
                    //   borderSide: BorderSide(
                    //     color: const Color.fromARGB(255, 203, 203, 203),
                    //     width: 3,
                    //   ),
                    // ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 160, 160, 160),
                        width: 3,
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 201, 201, 201),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: userPassword,
                  obscureText: true,
                  onChanged: (value) {
                    userPassword.text = value;
                  },
                  onSubmitted: (value) {
                    userPassword.text = value;
                  },
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter the user password",
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 42, 42, 42)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 203, 203, 203),
                        width: 3,
                      ),
                    ),
                    fillColor: Color.fromARGB(255, 201, 201, 201),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CharactersBloc>(context)
                          .add(LoginEvent());
                    },
                    child: Text(
                      "login",
                      style: TextStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 42, 42, 42)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
