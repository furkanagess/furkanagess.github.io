import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/background_pattern.dart';
import 'package:portfolio/core/localization/app_localizations.dart';

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
              child: Wrap(
                spacing: 30,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: [
                  _buildAppCard(
                    context,
                    title: 'Quicko – Minigames',
                    imagePath: 'assets/icons/new_logo.png',
                    description: AppLocalizations.of(context)
                        .get('app_quicko_description'),
                    features: [
                      AppLocalizations.of(context).get('app_quicko_feature_1'),
                      AppLocalizations.of(context).get('app_quicko_feature_2'),
                      AppLocalizations.of(context).get('app_quicko_feature_3'),
                      AppLocalizations.of(context).get('app_quicko_feature_4'),
                      AppLocalizations.of(context).get('app_quicko_feature_5'),
                      AppLocalizations.of(context).get('app_quicko_feature_6'),
                    ],
                    androidUrl:
                        'https://play.google.com/store/apps/details?id=com.furkanages.quicko_app',
                    iosUrl:
                        'https://apps.apple.com/us/app/quicko-minigames/id6751204576',
                  ),
                  _buildAppCard(
                    context,
                    title: 'Periodic Table: Learn & Play',
                    imagePath: 'assets/icons/elements_logo.png',
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
                  ),
                ],
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
  }) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return Container(
      width: isSmallScreen ? double.infinity : 500,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
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
        ],
      ),
    );
  }

  Widget _buildStoreButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
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
