import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/core/localization/app_localizations.dart';

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
                _buildSocialButton(
                  'GitHub',
                  FontAwesomeIcons.github,
                  'https://github.com/furkanagess',
                ),
                const SizedBox(height: 16),
                _buildSocialButton(
                  'LinkedIn',
                  FontAwesomeIcons.linkedin,
                  'https://www.linkedin.com/in/furkanages/',
                ),
              ],
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialButton(
                  'GitHub',
                  FontAwesomeIcons.github,
                  'https://github.com/furkanagess',
                ),
                const SizedBox(width: 20),
                _buildSocialButton(
                  'LinkedIn',
                  FontAwesomeIcons.linkedin,
                  'https://www.linkedin.com/in/furkanages/',
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildSocialButton(String title, IconData icon, String url) {
    return ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(url)),
      icon: FaIcon(icon),
      label: Text(title),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
    );
  }
}
