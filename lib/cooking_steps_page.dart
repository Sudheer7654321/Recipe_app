// cooking_steps_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CookingStepsPage extends StatelessWidget {
  final List<String> steps;
  final String title;

  const CookingStepsPage({super.key, required this.steps, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F2027),
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: steps.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Step ${index + 1}',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  steps[index],
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// --- IN RecipeDetails.dart ---
// Add to your ElevatedButton onPressed
/*
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CookingStepsPage(
          steps: recipe['steps'],
          title: recipe['title'],
        ),
      ),
    );
  },
  child: Text('Start Cooking')
)
*/