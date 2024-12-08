import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:localization/business%20logic/characters/bloc/characters_bloc.dart";

Widget buildlayoutbloc() {
  return BlocBuilder<CharactersBloc, CharactersState>(
    builder: (context, state) {
      return Container();
    },
  );
}
