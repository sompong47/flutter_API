import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeListScreen(),
    );
  }
}

// ---------------- Model ----------------

class Recipe {
  final int id;
  final String name;
  final String image;
  final int servings;

  Recipe({
    required this.id,
    required this.name,
    required this.image,
    required this.servings,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      servings: json['servings'],
    );
  }
}

// ---------------- Screen ----------------

class RecipeListScreen extends StatefulWidget {
  const RecipeListScreen({super.key});

  @override
  State<RecipeListScreen> createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  List<Recipe> _recipes = [];
  List<Recipe> _cart = [];

  @override
  void initState() {
    super.initState();
    fetchRecipes();
  }

  Future<void> fetchRecipes() async {
    final url = Uri.parse('https://dummyjson.com/recipes');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<dynamic> recipeList = jsonData['recipes'];
      setState(() {
        _recipes = recipeList.map((r) => Recipe.fromJson(r)).toList();
      });
    } else {
      throw Exception('Failed to load recipes');
    }
  }

  void addToCart(Recipe recipe) {
    setState(() {
      _cart.add(recipe);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('เพิ่ม "${recipe.name}" ลงในตะกร้าแล้ว'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void showCartDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('ตะกร้าสินค้า'),
        content: SizedBox(
          width: double.maxFinite,
          child: _cart.isEmpty
              ? const Text('ยังไม่มีรายการในตะกร้า')
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: _cart.length,
                  itemBuilder: (context, index) {
                    final item = _cart[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text('เสิร์ฟ: ${item.servings} คน'),
                    );
                  },
                ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('ปิด'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เมนูอาหาร (Recipes)'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: _recipes.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _recipes.length,
              itemBuilder: (context, index) {
                final recipe = _recipes[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        recipe.image,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const Icon(Icons.image),
                      ),
                    ),
                    title: Text(recipe.name),
                    subtitle: Text('เสิร์ฟ: ${recipe.servings} คน'),
                    trailing: ElevatedButton(
                      onPressed: () => addToCart(recipe),
                      child: const Text('เพิ่มลงตะกร้า'),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: showCartDialog,
        label: Text('ตะกร้า (${_cart.length})'),
        icon: const Icon(Icons.shopping_cart),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
