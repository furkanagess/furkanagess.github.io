import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/widgets/background_pattern.dart';
import 'package:portfolio/core/localization/app_localizations.dart';
import 'package:portfolio/widgets/interactive.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  Widget _getProjectCard(BuildContext context, int index) {
    switch (index) {
      case 0:
        return ProjectCard(
          title: 'Quicko Minigames',
          imagePath: 'assets/icons/new_logo.png',
          iconColor: Colors.purple,
          description: AppLocalizations.of(context).get('project_quicko'),
          technologies: [
            AppLocalizations.of(context).get('topic_flutter'),
            AppLocalizations.of(context).get('topic_dart'),
            AppLocalizations.of(context).get('topic_animation'),
            AppLocalizations.of(context).get('topic_game_dev'),
            AppLocalizations.of(context).get('topic_localization'),
            AppLocalizations.of(context).get('topic_admob')
          ],
          githubUrl: 'https://github.com/furkanagess/Quicko-Minigames',
        );
      case 1:
        return ProjectCard(
          title: 'FinBrain',
          imagePath: 'assets/icons/finbrain_logo.png',
          iconColor: Colors.green,
          description: AppLocalizations.of(context).get('project_finbrain'),
          technologies: [
            AppLocalizations.of(context).get('topic_flutter'),
            AppLocalizations.of(context).get('topic_dart'),
            AppLocalizations.of(context).get('topic_state_management'),
            AppLocalizations.of(context).get('topic_data_viz'),
            AppLocalizations.of(context).get('topic_local_storage'),
            AppLocalizations.of(context).get('topic_charts')
          ],
          githubUrl: 'https://github.com/furkanagess/FinBrain',
        );
      case 2:
        return ProjectCard(
          title: 'Firebase Auth Pages',
          icon: Icons.security_rounded,
          iconColor: Colors.orange,
          description:
              AppLocalizations.of(context).get('project_firebase_auth'),
          technologies: [
            AppLocalizations.of(context).get('topic_flutter'),
            AppLocalizations.of(context).get('topic_firebase_auth'),
            AppLocalizations.of(context).get('topic_clean_arch'),
            AppLocalizations.of(context).get('topic_custom_widgets')
          ],
          githubUrl: 'https://github.com/furkanagess/Firebase-Auth-Pages',
        );
      case 3:
        return ProjectCard(
          title: 'Flutter Base Project',
          icon: Icons.architecture_rounded,
          iconColor: Colors.blue,
          description: AppLocalizations.of(context).get('project_base'),
          technologies: [
            AppLocalizations.of(context).get('topic_flutter'),
            AppLocalizations.of(context).get('topic_mvvm'),
            AppLocalizations.of(context).get('topic_base_services'),
            AppLocalizations.of(context).get('topic_custom_widgets')
          ],
          githubUrl: 'https://github.com/furkanagess/Flutter-Base-Project',
        );
      case 4:
        return ProjectCard(
          title: 'Favorite Books',
          icon: CupertinoIcons.book_fill,
          iconColor: Colors.brown,
          description:
              AppLocalizations.of(context).get('project_favorite_books'),
          technologies: [
            AppLocalizations.of(context).get('topic_flutter'),
            AppLocalizations.of(context).get('topic_local_storage'),
            AppLocalizations.of(context).get('topic_state_management'),
            AppLocalizations.of(context).get('topic_ui_design')
          ],
          githubUrl: 'https://github.com/furkanagess/Favorite-Books',
        );
      case 5:
        return ProjectCard(
          title: 'Elements: Learn & Play',
          imagePath: 'assets/icons/elements_logo.png',
          iconColor: Colors.teal,
          description: AppLocalizations.of(context).get('project_elements'),
          technologies: [
            AppLocalizations.of(context).get('topic_flutter'),
            AppLocalizations.of(context).get('topic_local_storage'),
            AppLocalizations.of(context).get('topic_notifications'),
            AppLocalizations.of(context).get('topic_educational')
          ],
          githubUrl: 'https://github.com/furkanagess/Elements-Learn-and-Play',
        );
      default:
        return ProjectCard(
          title: 'Custom Flutter Widgets',
          icon: Icons.widgets_rounded,
          iconColor: Colors.indigo,
          description: AppLocalizations.of(context).get('project_widgets'),
          technologies: [
            AppLocalizations.of(context).get('topic_flutter'),
            AppLocalizations.of(context).get('topic_custom_widgets'),
            AppLocalizations.of(context).get('topic_ui_components'),
            AppLocalizations.of(context).get('topic_reusable_code')
          ],
          githubUrl: 'https://github.com/furkanagess/custom_flutter_widgets',
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return BackgroundPattern(
        isEven: true,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: isSmallScreen ? 40 : 80,
            horizontal: 20,
          ),
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      AppLocalizations.of(context).get('open_source_projects'),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                AppLocalizations.of(context).get('featured_projects'),
                style: TextStyle(
                  fontSize: isSmallScreen ? 28 : 36,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onBackground,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context).get('projects_description'),
                style: TextStyle(
                  fontSize: isSmallScreen ? 16 : 18,
                  color: theme.colorScheme.onBackground.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final cardWidth = isSmallScreen
                        ? constraints.maxWidth
                        : (constraints.maxWidth - 60) / 3;
                    return Wrap(
                      spacing: 30,
                      runSpacing: 30,
                      children: [
                        ...List.generate(
                          7, // Toplam proje sayısı
                          (index) => SizedBox(
                            width: cardWidth,
                            child: Reveal(
                              delay: Duration(milliseconds: 60 * index),
                              child: _getProjectCard(context, index),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;
  final String githubUrl;
  final IconData? icon;
  final Color iconColor;
  final String? imagePath;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
    required this.githubUrl,
    this.icon,
    required this.iconColor,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return HoverScale(
      borderRadius: BorderRadius.circular(15),
      hoverColor: theme.colorScheme.surface.withOpacity(0.02),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: theme.colorScheme.primary.withOpacity(0.08),
            width: 1,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  imagePath != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imagePath!,
                            height: 72,
                            width: 72,
                            fit: BoxFit.contain,
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: iconColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            icon,
                            color: iconColor,
                            size: 24,
                          ),
                        ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: isSmallScreen ? 20 : 24,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: theme.colorScheme.onSurface.withOpacity(0.7),
                  height: 1.5,
                ),
                maxLines: null,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 25),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: technologies
                    .map((tech) => Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            tech,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 25),
              Pressable(
                onTap: () => launchUrl(Uri.parse(githubUrl)),
                child: HoverScale(
                  borderRadius: BorderRadius.circular(10),
                  hoverColor: theme.colorScheme.primary.withOpacity(0.05),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary.withOpacity(0.3),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.github,
                          color: theme.colorScheme.onPrimary,
                          size: 18,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          AppLocalizations.of(context).get('view_on_github'),
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
