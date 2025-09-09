import 'package:flutter/material.dart';
import 'package:portfolio/core/localization/app_localizations.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: isSmallScreen ? 40 : 80,
        horizontal: 20,
      ),
      color: theme.colorScheme.background,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: isSmallScreen
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              Row(
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
                      AppLocalizations.of(context).get('about_me'),
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
                AppLocalizations.of(context).get('professional_background'),
                style: TextStyle(
                  fontSize: isSmallScreen ? 28 : 36,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onBackground,
                ),
                textAlign: isSmallScreen ? TextAlign.center : TextAlign.left,
              ),
              const SizedBox(height: 32),
              Container(
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
                  crossAxisAlignment: isSmallScreen
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign:
                          isSmallScreen ? TextAlign.center : TextAlign.left,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: isSmallScreen ? 16 : 18,
                          height: 1.6,
                          color: theme.colorScheme.onSurface,
                        ),
                        children: [
                          TextSpan(
                            text: AppLocalizations.of(context)
                                .get('about_description'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      AppLocalizations.of(context).get('about_experience'),
                      style: TextStyle(
                        fontSize: isSmallScreen ? 16 : 18,
                        height: 1.6,
                        color: theme.colorScheme.onSurface,
                      ),
                      textAlign:
                          isSmallScreen ? TextAlign.center : TextAlign.left,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      AppLocalizations.of(context).get('about_additional'),
                      style: TextStyle(
                        fontSize: isSmallScreen ? 16 : 18,
                        height: 1.6,
                        color: theme.colorScheme.onSurface,
                      ),
                      textAlign:
                          isSmallScreen ? TextAlign.center : TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
