import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/background_pattern.dart';
import 'package:portfolio/core/localization/app_localizations.dart';
import 'package:portfolio/widgets/interactive.dart';

class PublishedApps extends StatelessWidget {
  const PublishedApps({super.key});

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return BackgroundPattern(
        child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: isSmallScreen ? 40 : 80,
        horizontal: 20,
      ),
      color: Colors.transparent,
      child: Center(
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
                    AppLocalizations.of(context).get('published_apps'),
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
              AppLocalizations.of(context).get('my_apps_on_stores'),
              style: TextStyle(
                fontSize: isSmallScreen ? 28 : 36,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context).get('check_published_apps'),
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
                  final isSmallScreen = MediaQuery.of(context).size.width < 768;
                  final cardWidth = isSmallScreen
                      ? constraints.maxWidth
                      : (constraints.maxWidth - 60) / 3;
                  return Wrap(
                    spacing: 30,
                    runSpacing: 30,
                    alignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        width: cardWidth,
                        child: Reveal(
                          delay: const Duration(milliseconds: 80),
                          child: _buildAppCard(
                            context,
                            title: 'Quicko – Minigames',
                            imagePath: 'assets/icons/quicko-glow.png',
                            description: AppLocalizations.of(context)
                                .get('app_quicko_description'),
                            features: [
                              AppLocalizations.of(context)
                                  .get('app_quicko_feature_1'),
                              AppLocalizations.of(context)
                                  .get('app_quicko_feature_2'),
                              AppLocalizations.of(context)
                                  .get('app_quicko_feature_3'),
                              AppLocalizations.of(context)
                                  .get('app_quicko_feature_4'),
                              AppLocalizations.of(context)
                                  .get('app_quicko_feature_5'),
                              AppLocalizations.of(context)
                                  .get('app_quicko_feature_6'),
                            ],
                            androidUrl:
                                'https://play.google.com/store/apps/details?id=com.furkanages.quicko_app',
                            iosUrl:
                                'https://apps.apple.com/us/app/quicko-minigames/id6751204576',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: cardWidth,
                        child: Reveal(
                          delay: const Duration(milliseconds: 160),
                          child: _buildAppCard(
                            context,
                            title: 'Periodic Table: Learn & Play',
                            imagePath: 'assets/icons/last-pr-icon.png',
                            description: AppLocalizations.of(context)
                                .get('app_elements_description'),
                            features: [
                              AppLocalizations.of(context)
                                  .get('app_elements_feature_1'),
                              AppLocalizations.of(context)
                                  .get('app_elements_feature_2'),
                              AppLocalizations.of(context)
                                  .get('app_elements_feature_3'),
                              AppLocalizations.of(context)
                                  .get('app_elements_feature_4'),
                              AppLocalizations.of(context)
                                  .get('app_elements_feature_5'),
                              AppLocalizations.of(context)
                                  .get('app_elements_feature_6'),
                            ],
                            androidUrl:
                                'https://play.google.com/store/apps/details?id=com.furkanages.elements',
                            iosUrl:
                                'https://apps.apple.com/us/app/periodic-table-learn-play/id6752439893',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: cardWidth,
                        child: Reveal(
                          delay: const Duration(milliseconds: 240),
                          child: _buildAppCard(
                            context,
                            title: 'SpookyAI: Halloween Image Gen',
                            imagePath: 'assets/icons/app_icon.png',
                            description:
                                'Turn your selfies into spooky Halloween AI art! Unlock exclusive prompts, generate scary images, and create cinematic edits in seconds.',
                            features: [
                              'AI-Powered Halloween Images',
                              'Spooky & Fun Themes',
                              'Exclusive Prompts',
                              'Fast Generation',
                              'User-Friendly Interface',
                              'High-Quality Results',
                            ],
                            androidUrl:
                                'https://play.google.com/store/apps/details?id=com.furkanages.quicko_app',
                            iosUrl:
                                'https://apps.apple.com/us/app/spookyai-halloween-image-gen/id6753217831',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: cardWidth,
                        child: Reveal(
                          delay: const Duration(milliseconds: 320),
                          child: _buildAppCard(
                            context,
                            title: 'Gallery Cleaner: Swipe Photo',
                            imagePath: 'assets/icons/gallery_logo.png',
                            description:
                                'Gallery Cleaner: Swipe Photo helps you effortlessly clean, organize, and optimize your photo gallery.',
                            features: const [
                              'AI Blur Detection',
                              'Duplicate Photo Finder',
                              'Swipe-to-Delete Cleanup',
                              'One-Tap Smart Clean',
                              'On-Device Privacy',
                              'Storage Optimization',
                            ],
                            androidUrl:
                                'https://play.google.com/store/apps/details?id=com.furkanages.gallerycleaner',
                            iosUrl:
                                'https://apps.apple.com/us/app/gallery-cleaner-swipe-photo/id6754893118',
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
      ),
    ));
  }

  Widget _buildAppCard(
    BuildContext context, {
    required String title,
    required String description,
    required List<String> features,
    required String androidUrl,
    String? iosUrl,
    String? imagePath,
    String? githubUrl,
  }) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return HoverScale(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: isSmallScreen ? double.infinity : 500,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(0.08),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (imagePath != null) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imagePath,
                        height: 56,
                        width: 56,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
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
              const SizedBox(height: 16),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: theme.colorScheme.onSurface.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: features
                    .map(
                      (feature) => Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: theme.colorScheme.primary.withOpacity(0.2),
                          ),
                        ),
                        child: Text(
                          feature,
                          style: TextStyle(
                            fontSize: 14,
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: _buildStoreButton(
                      context,
                      icon: FontAwesomeIcons.googlePlay,
                      label: AppLocalizations.of(context).get('google_play'),
                      onTap: () => _launchUrl(androidUrl),
                    ),
                  ),
                  if (iosUrl != null) ...[
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildStoreButton(
                        context,
                        icon: FontAwesomeIcons.appStore,
                        label: AppLocalizations.of(context).get('app_store'),
                        onTap: () => _launchUrl(iosUrl),
                      ),
                    ),
                  ],
                ],
              ),
              if (githubUrl != null) ...[
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildStoreButton(
                        context,
                        icon: FontAwesomeIcons.github,
                        label: 'GitHub',
                        onTap: () => _launchUrl(githubUrl),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ));
  }

  Widget _buildStoreButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    return Pressable(
      onTap: onTap,
      child: HoverScale(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.primary.withOpacity(0.3),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                color: theme.colorScheme.onPrimary,
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
