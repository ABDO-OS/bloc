import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Data%20Layer/Model/Layout/bloclayout.dart';
import 'package:localization/Data%20Layer/Model/characters/characterscollection.dart';
import 'package:localization/business%20logic/characters/bloc/characters_bloc.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  Characterscollection charactercillection =
      Characterscollection(error: "", characters: []);
  int pagenum = 1;
  ScrollController characterController = ScrollController();

  scrollController() {
    try {
      if (characterController.position.atEdge) {
        if (characterController.position.pixels != 0) {
          pagenum++;
          BlocProvider.of<CharactersBloc>(context)
              .add(GetCharactersEvent(isRefreched: false, page: pagenum));
        }
      }
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersBloc>(context)
        .add(GetCharactersEvent(isRefreched: false, page: pagenum));
    characterController.addListener(scrollController);
  }

  @override
  void dispose() {
    super.dispose();
    characterController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bloclayout(),
    );
  }
}
