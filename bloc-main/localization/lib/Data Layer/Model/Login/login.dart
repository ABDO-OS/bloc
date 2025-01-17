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
      // resizeToAvoidBottomInset: false,
      body: BlocListener<CharactersBloc, CharactersState>(
        listener: (context, state) {
          if (state is CharactersLoadedState) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LayoutScreen()));
          }
        },
        child: SingleChildScrollView(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 60),
                      Title(
                        child: Text(
                          "WELCOME BACK",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        color: Colors.white,
                      ),
                      Title(
                        child: Text(
                          "Login to the GOT WORLD",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextField(
                        controller: userID,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(
                              255, 0, 0, 0), // Inner text color
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(
                              0.8), // Background color of the TextField
                          hintText: "Enter the user id",
                          hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.7)), // Hint text color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.white, // Border color
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color:
                                  Colors.white, // Border color when not focused
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 87, 169,
                                  135), // Border color when focused
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        controller: userPassword,
                        obscureText: true,
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(
                              255, 0, 0, 0), // Inner text color
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(
                              0.8), // Background color of the TextField
                          hintText: "Enter the user password",
                          hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.7)), // Hint text color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Colors.white, // Border color
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color:
                                  Colors.white, // Border color when not focused
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 87, 169,
                                  135), // Border color when focused
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(),
                        child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CharactersBloc>(context)
                                .add(LoginEvent());
                          },

                          // foregroundDecoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "login",
                            style: TextStyle(
                                fontSize: 25,
                                color: const Color.fromARGB(255, 42, 42, 42)),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
