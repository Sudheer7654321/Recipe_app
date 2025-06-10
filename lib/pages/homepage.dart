import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipe_app/colors.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/pages/recipe_card.dart';
import 'package:recipe_app/pages/recipe_details_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> allRecipes = [];
  List<Map<String, dynamic>> displayedRecipes = [];
  String searchQuery = '';
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _loadAllRecipes();
  }

  void _loadAllRecipes() {
    allRecipes = recipeItems.values.expand((list) => list).toList();
    _filterRecipes();
  }

  void _filterRecipes() {
    setState(() {
      if (searchQuery.isEmpty) {
        String currentCategory = recipeCategories[selectedIndex];
        displayedRecipes = recipeItems[currentCategory] ?? [];
      } else {
        displayedRecipes =
            allRecipes.where((item) {
              final name = item['name'].toString().toLowerCase();
              final description = item['description'].toString().toLowerCase();
              return name.contains(searchQuery) ||
                  description.contains(searchQuery);
            }).toList();
      }
    });
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      searchQuery = value.toLowerCase();
      _filterRecipes();
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Hello, Kristin 👋\n',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: 'What you want to cook today?',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s',
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  TextField(
                    controller: searchController,
                    onChanged: _onSearchChanged,
                    style: GoogleFonts.poppins(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Find your favorite recipe...',
                      hintStyle: GoogleFonts.poppins(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      prefixIcon: Icon(
                        FeatherIcons.search,
                        color: Colors.white,
                        size: 20,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipeCategories.length,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                          searchQuery = '';
                          searchController.clear();
                          _filterRecipes();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              recipeCategories[index],
                              style: GoogleFonts.poppins(
                                color: Colors.white70,
                                fontWeight:
                                    isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 4),
                            if (isSelected)
                              Container(
                                width: 24,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            displayedRecipes.isEmpty
                ? SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Center(
                      child: Text(
                        'No recipes found',
                        style: GoogleFonts.poppins(
                          color: Colors.white54,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                )
                : SliverMasonryGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childCount: displayedRecipes.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          '${displayedRecipes.length} recipes found',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }

                    final item = displayedRecipes[index - 1];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (_) => RecipeDetails(
                                  recipe: {
                                    'name': item['name'],
                                    'duration': item['rating'].toString(),
                                    'image': item['image'],
                                    'description': item['name'] + desc,
                                  },
                                ),
                          ),
                        );
                      },
                      child: RecipeCard(
                        imagePath: item['image'],
                        name: item['name'],
                        rating: (item['rating'] as num).toDouble(),
                        duration: item['duration'],
                        highlight: searchQuery,
                      ),
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}
