import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:recipe_app/models/wishlist_manager.dart';

class RecipeCard extends StatefulWidget {
  final String imagePath;
  final String name;
  final double rating;
  final String duration;
  final String highlight;

  const RecipeCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
    required this.duration,
    this.highlight = '',
  });

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  late bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    isFavorite = WishlistManager().isInWishlist(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: Colors.white12),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              _buildHighlightedText(widget.name, widget.highlight),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    size: 16,
                    color:
                        index < widget.rating ? Colors.amber : Colors.white24,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FeatherIcons.clock, size: 14, color: Colors.white54),
                  const SizedBox(width: 6),
                  Text(
                    widget.duration,
                    style: GoogleFonts.poppins(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 18,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: ClipOval(
                  child: Image.asset(
                    widget.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 54,
                right: -1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                      WishlistManager().toggleWishlist({
                        'name': widget.name,
                        'imagePath': widget.imagePath,
                        'duration': widget.duration,
                      });
                    });
                  },
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.white70,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHighlightedText(String text, String highlight) {
    if (highlight.isEmpty ||
        !text.toLowerCase().contains(highlight.toLowerCase())) {
      return Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    final lowerText = text.toLowerCase();
    final lowerHighlight = highlight.toLowerCase();
    final start = lowerText.indexOf(lowerHighlight);
    final end = start + lowerHighlight.length;

    return RichText(
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
        children: [
          TextSpan(
            text: text.substring(0, start),
            style: const TextStyle(color: Colors.white),
          ),
          TextSpan(
            text: text.substring(start, end),
            style: const TextStyle(color: Colors.greenAccent),
          ),
          TextSpan(
            text: text.substring(end),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
