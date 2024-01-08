import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the size of the current screen
    var screenSize = MediaQuery.of(context).size;

    // Calculate image size as a proportion of screen width
    var imageSize = screenSize.width * 0.3; // 30% of screen width

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/me.png',
              width: imageSize,
              height: imageSize,
            ),
            SizedBox(height: 20),
            const Text(
              'Adane Adgo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Junior Software Engineer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
