import 'package:flutter/material.dart';
import 'package:portfolio/widgets/header.dart';
import 'package:portfolio/widgets/about.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/skills.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/published_apps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(6, (index) => GlobalKey());

  void scrollToSection(int index) {
    final context = _sectionKeys[index].currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Header(
              key: _sectionKeys[0],
              onSectionClick: scrollToSection,
            ),
            About(key: _sectionKeys[1]),
            Skills(key: _sectionKeys[2]),
            Projects(key: _sectionKeys[3]),
            PublishedApps(key: _sectionKeys[4]),
            Contact(key: _sectionKeys[5]),
          ],
        ),
      ),
    );
  }
}
