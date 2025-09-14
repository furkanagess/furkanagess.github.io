import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/core/localization/app_localizations.dart';
import 'package:portfolio/widgets/interactive.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: isSmallScreen ? 30 : 50,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context).get('contact_me'),
            style: TextStyle(
              fontSize: isSmallScreen ? 28 : 36,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            AppLocalizations.of(context).get('lets_connect'),
            style: TextStyle(
              fontSize: isSmallScreen ? 16 : 18,
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            AppLocalizations.of(context).get('contact_description'),
            style: TextStyle(
              fontSize: 16,
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          if (isSmallScreen)
            Column(
              children: [
                Reveal(
                  delay: const Duration(milliseconds: 60),
                  child: _buildSocialButton(
                  context,
                  'GitHub',
                  FontAwesomeIcons.github,
                  'https://github.com/furkanagess',
                  ),
                ),
                const SizedBox(height: 16),
                Reveal(
                  delay: const Duration(milliseconds: 120),
                  child: _buildSocialButton(
                  context,
                  'LinkedIn',
                  FontAwesomeIcons.linkedin,
                  'https://www.linkedin.com/in/furkanages/',
                  ),
                ),
                const SizedBox(height: 16),
                Reveal(
                  delay: const Duration(milliseconds: 180),
                  child: _buildSocialButton(
                  context,
                  'Email',
                  FontAwesomeIcons.envelope,
                  'mailto:caglarrfurkann@gmail.com',
                  ),
                ),
              ],
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Reveal(
                  delay: const Duration(milliseconds: 60),
                  child: _buildSocialButton(
                  context,
                  'GitHub',
                  FontAwesomeIcons.github,
                  'https://github.com/furkanagess',
                  ),
                ),
                const SizedBox(width: 20),
                Reveal(
                  delay: const Duration(milliseconds: 120),
                  child: _buildSocialButton(
                  context,
                  'LinkedIn',
                  FontAwesomeIcons.linkedin,
                  'https://www.linkedin.com/in/furkanages/',
                  ),
                ),
              ],
            ),
          const SizedBox(height: 16),
          SelectableText(
            'caglarrfurkann@gmail.com',
            style: TextStyle(
              fontSize: 16,
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton(BuildContext context, String title, IconData icon, String url) {
    final theme = Theme.of(context);
    return Pressable(
      onTap: () {
        final uri = Uri.parse(url);
        if (uri.scheme == 'mailto') {
          launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          launchUrl(uri);
        }
      },
      child: HoverScale(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
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
              FaIcon(icon, color: theme.colorScheme.onPrimary, size: 18),
              const SizedBox(width: 10),
              Text(
                title,
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
