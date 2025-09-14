import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/widgets/interactive.dart';
import 'package:portfolio/widgets/background_pattern.dart';
import 'package:portfolio/core/localization/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class MediumPosts extends StatelessWidget {
  const MediumPosts({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmall = MediaQuery.of(context).size.width < 768;

    final articles = [
      _Article(
        url:
            'https://medium.com/@caglarrfurkann/flutter-environment-yap%C4%B1s%C4%B1-envied-bd24d5fe0836',
        title: AppLocalizations.of(context).get('medium_article_1_title'),
        summary: AppLocalizations.of(context).get('medium_article_1_summary'),
        icon: Icons.vpn_key_rounded,
      ),
      _Article(
        url:
            'https://medium.com/@caglarrfurkann/10-ad%C4%B1mda-sekt%C3%B6rde-aranmayan-flutter-geli%C5%9Ftiricisi-olun-6aa713c11e81',
        title: AppLocalizations.of(context).get('medium_article_2_title'),
        summary: AppLocalizations.of(context).get('medium_article_2_summary'),
        icon: Icons.warning_amber_rounded,
      ),
      _Article(
        url:
            'https://medium.com/@caglarrfurkann/flutter-temiz-widget-kullan%C4%B1m%C4%B1-71ce8e5db3b3',
        title: AppLocalizations.of(context).get('medium_article_3_title'),
        summary: AppLocalizations.of(context).get('medium_article_3_summary'),
        icon: Icons.cleaning_services_rounded,
      ),
    ];

    return BackgroundPattern(
      isEven: false,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: isSmall ? 40 : 80,
          horizontal: 20,
        ),
        color: Colors.transparent,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        AppLocalizations.of(context).get('medium_tag'),
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
                  AppLocalizations.of(context).get('medium_title'),
                  style: TextStyle(
                    fontSize: isSmall ? 28 : 36,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onBackground,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0; i < articles.length; i++)
                      Reveal(
                        delay: Duration(milliseconds: 80 * i),
                        child: _ArticleCard(article: articles[i]),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ArticleCard extends StatelessWidget {
  final _Article article;
  const _ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmall = MediaQuery.of(context).size.width < 768;
    final width = isSmall ? double.infinity : 360.0;

    return SizedBox(
      width: width,
      child: HoverScale(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(0.08),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/medium.svg',
                      height: 18,
                      colorFilter: ColorFilter.mode(
                        theme.colorScheme.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      article.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                article.summary,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.55,
                  color: theme.colorScheme.onSurface.withOpacity(0.85),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Pressable(
                  onTap: () => launchUrl(Uri.parse(article.url)),
                  child: HoverScale(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
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
                          const Icon(Icons.open_in_new,
                              size: 16, color: Colors.white),
                          const SizedBox(width: 8),
                          Text(
                            AppLocalizations.of(context)
                                .get('medium_read_more'),
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
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

class _Article {
  final String url;
  final String title;
  final String summary;
  final IconData icon;
  const _Article({
    required this.url,
    required this.title,
    required this.summary,
    required this.icon,
  });
}
