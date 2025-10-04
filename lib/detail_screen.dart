import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String ingredients;
  final String instructions;

  const DetailScreen({super.key, required this.name, required this.ingredients, required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ingredients", style: Theme.of(context).textTheme.bodyLarge),

            const SizedBox(height: 4),

            Text(ingredients, style: const TextStyle(fontSize: 14)),

            const SizedBox(height: 20),

            Text("Instructions", style: Theme.of(context).textTheme.bodyLarge),

            const SizedBox(height: 4),

            Text(instructions, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
