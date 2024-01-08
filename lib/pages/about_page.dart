import 'package:flutter/material.dart';
import 'dart:html' as html; // For opening links in a new browser tab

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var experiences = [
      {
        'name': 'KLA, Software Developer',
        'dates': 'Jan 2020 - Present',
        'description': 'Description of Experience 1...ejnfewnfoewnf[onewfewonfpewionfoewnfeejnfoewfnewofewfewfejwfnoewifneowfneowinoi]'
      },
      {
        'name': 'KLA, Automation Developer',
        'dates': 'Jan 2020 - Present',
        'description': 'Description of Experience 1...'
      }, 
      {
        'name': 'SCE, Teaching Assistent',
        'dates': 'Jan 2020 - Present',
        'description': 'Description of Experience 1...'
      },
    ];

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(screenSize.width * 0.02), // Dynamic padding based on screen width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: experiences.map((experience) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: screenSize.height * 0.02), // Dynamic bottom padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          experience['name']!,
                          style: TextStyle(
                            fontSize: screenSize.width * 0.03, // Dynamic font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01), // Dynamic spacing
                        Text(
                          experience['dates']!,
                          style: TextStyle(
                            fontSize: screenSize.width * 0.02, // Dynamic font size
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01), // Dynamic spacing
                        Text(
                          experience['description']!,
                          style: TextStyle(fontSize: screenSize.width * 0.01), // Dynamic font size
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.link),
                iconSize: screenSize.width * 0.06, // Dynamic icon size
                onPressed: () => html.window.open('https://www.linkedin.com/in/adaneadgo/', '_blank'),
              ),
              SizedBox(width: screenSize.width*0.1),
              IconButton(
                icon: Icon(Icons.code),
                iconSize: screenSize.width * 0.06, // Dynamic icon size
                onPressed: () => html.window.open('https://github.com/RealAdane', '_blank'),
              ),
              SizedBox(width: screenSize.width*0.1),
              IconButton(
                icon: Icon(Icons.email),
                iconSize: screenSize.width * 0.06, // Dynamic icon size
                onPressed: () => html.window.open('mailto:adane.adgo@outlook.com', '_blank'),
              ),
            ],
          ),
          SizedBox(height: screenSize.height * 0.02), // Dynamic bottom spacing
        ],
      ),
    );
  }
}
