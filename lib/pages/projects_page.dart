import 'package:flutter/material.dart';
import 'dart:html' as html;

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var projects = [
      {
        'title': 'Bubbles',
        'description': 'Developed a location-based social network leveraging Flutter for cross-platform application development, and utilizing GPS, WiFi, NFC, and Bluetooth for precise location identification and enhanced user interaction capabilities',
        'imageUrl': 'https://static.vecteezy.com/system/resources/previews/009/472/442/original/water-bubble-cartoon-illustration-isolated-on-white-background-vector.jpg',
        'link': 'https://youtu.be/ADrEeZ47ztg?si=LNOkOTnmdhIvoTi5',
      },

    ];

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          var project = projects[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    project['title']!,
                    style: TextStyle(
                      fontSize: screenWidth * 0.03, // Dynamic font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.02),
                  Image.network(
                    project['imageUrl']!,
                    width: screenWidth * 0.1, // Dynamic image width
                    height: screenWidth * 0.1, // Dynamic image height
                  ),
                  SizedBox(height: screenWidth * 0.02),
                  Text(
                    project['description']!,
                    style: TextStyle(
                      fontSize: screenWidth * 0.02, // Dynamic font size
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.02),
                  IconButton(
                    icon: const Icon(Icons.link),
                    iconSize: screenWidth * 0.05,
                    onPressed: () => _launchURL(project['link']!),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }



void _launchURL(String url) {
  html.window.open(url, '_blank');
}

  }
