import 'package:flutter/material.dart';
import 'package:localization/Data%20Layer/Model/characters/characters.dart';

class charactersDatailsScreen extends StatelessWidget {
  final CharactersModel character;

  const charactersDatailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        title: Text(
          character.fullName ?? 'Character Details',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 87, 87, 87),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (character.imageUrl != null && character.imageUrl!.isNotEmpty)
              Image.network(
                character.imageUrl!,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 30),
            // Display First Name
            Container(
              width: 700,
              height: 300,
              color: const Color.fromARGB(255, 156, 156, 156),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [],
              ),
            ),
            Text(
              'First Name: ${character.firstName ?? 'N/A'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Display Last Name
            Text(
              'Last Name: ${character.lastName ?? 'N/A'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Display Title
            Text(
              'Title: ${character.title ?? 'N/A'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Display Family
            Text(
              'Family: ${character.family ?? 'N/A'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
