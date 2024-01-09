import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/projects_page.dart';
import 'pages/about_page.dart';


void main() {
  runApp(const PortfolioApp());
}


class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
   _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EdoTech",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Still under development...'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.work), text: 'Projects'),
              Tab(icon: Icon(Icons.person), text: 'About'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            ProjectsPage(),
            AboutPage(),
          ],
        ),
      ),
    );
  }
}

