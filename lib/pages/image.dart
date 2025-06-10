import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          child: Image(
            image: NetworkImage(
              'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/people19.png',
            ),
          ),
        ),
      ),
    );
  }
}
