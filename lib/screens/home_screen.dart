import 'package:flutter/material.dart';
import 'package:portfolio/widgets/header.dart';
import 'package:portfolio/widgets/about.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/skills.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/published_apps.dart';
import 'package:portfolio/widgets/background_pattern.dart';
import 'package:portfolio/widgets/medium_posts.dart';
import 'package:portfolio/widgets/header.dart' show HeaderBar;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(7, (index) => GlobalKey());

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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  BackgroundPattern(
                    isEven: false,
                    child: Header(
                      key: _sectionKeys[0],
                      onSectionClick: scrollToSection,
                      showTopBar: false,
                    ),
                  ),
                  BackgroundPattern(
                    isEven: true,
                    child: About(key: _sectionKeys[1]),
                  ),
                  BackgroundPattern(
                    isEven: false,
                    child: Skills(key: _sectionKeys[2]),
                  ),
                  BackgroundPattern(
                    isEven: true,
                    child: Projects(key: _sectionKeys[3]),
                  ),
                  BackgroundPattern(
                    isEven: false,
                    child: PublishedApps(key: _sectionKeys[4]),
                  ),
                  BackgroundPattern(
                    isEven: true,
                    child: MediumPosts(key: _sectionKeys[5]),
                  ),
                  BackgroundPattern(
                    isEven: false,
                    child: Contact(key: _sectionKeys[6]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background.withOpacity(0.0),
            ),
            child: HeaderBar(onSectionClick: scrollToSection),
          ),
        ],
      ),
    );
  }
}
