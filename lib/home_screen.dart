import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      "name": "Milk and cereal",
      "ingredients": "Milk, cereal (of your choice)",
      "instructions": "1. Pour cereal\n 2. Pour milk\n Or vice versa if you want"
    },
    {
      "name": "Ramen",
      "ingredients": "Noodles, spices, egg, meat",
      "instructions": "1. Boil noodles\n 2. Cook your choice of meat\n 3. Boil or fry the egg\n 4. Add spices, meat, then egg to noodles"
    },
    {
      "name": "Scrambled eggs",
      "ingredients": "Eggs, salt and pepper",
      "instructions": "1. Scramble eggs in a bowl\n 2. Pour and stir eggs around in pan\n 3. Season with salt and pepper"
    },
    {
      "name": "Steak",
      "ingredients": "Steak, steak seasoning, butter",
      "instructions": "1. Season both sides of the steak with steak seasoning\n 2. Slice prefered amount of butter and put into pan on medium\n 3. Put steak in pan and cook both sides around 3 to 4 minutes each\n 4. Take steak out and let it rest for 2 minutes"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe App"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListView.separated(
        itemCount: recipes.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),

            child: ListTile(
              title: Text(recipe["name"]!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      name: recipe["name"]!,
                      ingredients: recipe["ingredients"]!,
                      instructions: recipe["instructions"]!,
                    ),
                  ),
                );
              },
            )
          );
        }
      ),
    );
  }
}
