import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/core/localization/app_localizations.dart';
import 'package:portfolio/widgets/language_switcher.dart';
import 'package:portfolio/widgets/interactive.dart';
import 'dart:html' as html;

class HeaderBar extends StatelessWidget {
  final Function(int) onSectionClick;

  const HeaderBar({super.key, required this.onSectionClick});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => onSectionClick(0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'FC',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Furkan Caglar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isSmallScreen)
              Builder(
                builder: (context) => IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: theme.colorScheme.primary,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const LanguageSwitcher(),
                            const SizedBox(height: 20),
                            _NavButton(
                              title: AppLocalizations.of(context).get('home'),
                              onTap: () {
                                Navigator.pop(context);
                                onSectionClick(0);
                              },
                              theme: theme,
                            ),
                            _NavButton(
                              title: AppLocalizations.of(context).get('about'),
                              onTap: () {
                                Navigator.pop(context);
                                onSectionClick(1);
                              },
                              theme: theme,
                            ),
                            _NavButton(
                              title: AppLocalizations.of(context).get('skills'),
                              onTap: () {
                                Navigator.pop(context);
                                onSectionClick(2);
                              },
                              theme: theme,
                            ),
                            _NavButton(
                              title:
                                  AppLocalizations.of(context).get('projects'),
                              onTap: () {
                                Navigator.pop(context);
                                onSectionClick(3);
                              },
                              theme: theme,
                            ),
                            _NavButton(
                              title: AppLocalizations.of(context).get('apps'),
                              onTap: () {
                                Navigator.pop(context);
                                onSectionClick(4);
                              },
                              theme: theme,
                            ),
                            _NavButton(
                              title:
                                  AppLocalizations.of(context).get('contact'),
                              onTap: () {
                                Navigator.pop(context);
                                onSectionClick(6);
                              },
                              theme: theme,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            else
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const LanguageSwitcher(),
                    const SizedBox(width: 20),
                    _NavButton(
                      title: AppLocalizations.of(context).get('home'),
                      onTap: () => onSectionClick(0),
                      theme: theme,
                    ),
                    _NavButton(
                      title: AppLocalizations.of(context).get('about'),
                      onTap: () => onSectionClick(1),
                      theme: theme,
                    ),
                    _NavButton(
                      title: AppLocalizations.of(context).get('skills'),
                      onTap: () => onSectionClick(2),
                      theme: theme,
                    ),
                    _NavButton(
                      title: AppLocalizations.of(context).get('projects'),
                      onTap: () => onSectionClick(3),
                      theme: theme,
                    ),
                    _NavButton(
                      title: AppLocalizations.of(context).get('apps'),
                      onTap: () => onSectionClick(4),
                      theme: theme,
                    ),
                    _NavButton(
                      title: AppLocalizations.of(context).get('contact'),
                      onTap: () => onSectionClick(6),
                      theme: theme,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final Function(int) onSectionClick;
  final bool showTopBar;

  const Header({
    super.key,
    required this.onSectionClick,
    this.showTopBar = true,
  });

  Future<void> _downloadCV(BuildContext context) async {
    html.AnchorElement(
      href: '/assets/files/caglar_furkan_resume.pdf',
    )
      ..setAttribute('download', 'caglar_furkan_resume.pdf')
      ..click();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;

    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.background,
      ),
      child: Stack(
        children: [
          if (showTopBar) HeaderBar(onSectionClick: onSectionClick),
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1200),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: isSmallScreen ? 40 : 0,
              ),
              child: isSmallScreen
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.2),
                                blurRadius: 30,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.asset(
                                    'assets/images/pp.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          theme.colorScheme.background
                                              .withOpacity(0.2),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                AppLocalizations.of(context).get('welcome'),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              AppLocalizations.of(context).get('hi_im'),
                              style: TextStyle(
                                fontSize: 24,
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Furkan Çağlar',
                              style: TextStyle(
                                fontSize: 48,
                                height: 1.1,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onBackground,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  AppLocalizations.of(context)
                                      .get('flutter_developer'),
                                  textStyle: TextStyle(
                                    fontSize: 28,
                                    height: 1.2,
                                    color: theme.colorScheme.onBackground
                                        .withOpacity(0.9),
                                  ),
                                  speed: const Duration(milliseconds: 100),
                                ),
                                TypewriterAnimatedText(
                                  AppLocalizations.of(context)
                                      .get('software_engineer'),
                                  textStyle: TextStyle(
                                    fontSize: 28,
                                    height: 1.2,
                                    color: theme.colorScheme.onBackground
                                        .withOpacity(0.9),
                                  ),
                                  speed: const Duration(milliseconds: 100),
                                ),
                              ],
                              repeatForever: true,
                            ),
                            const SizedBox(height: 40),
                            Column(
                              children: [
                                Pressable(
                                  onTap: () => onSectionClick(4),
                                  child: HoverScale(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 24,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: theme.colorScheme.primary
                                                .withOpacity(0.3),
                                            blurRadius: 12,
                                            offset: const Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .get('get_in_touch'),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: theme.colorScheme.onPrimary,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Pressable(
                                  onTap: () => onSectionClick(3),
                                  child: HoverScale(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 24,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.surface,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: theme.colorScheme.primary
                                              .withOpacity(0.3),
                                          width: 2,
                                        ),
                                      ),
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .get('view_projects'),
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: theme.colorScheme.primary,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Pressable(
                                  onTap: () => _downloadCV(context),
                                  child: HoverScale(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 24,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.surface,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                          color: theme.colorScheme.primary
                                              .withOpacity(0.3),
                                          width: 2,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.download_rounded,
                                            size: 20,
                                            color: theme.colorScheme.primary,
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            AppLocalizations.of(context)
                                                .get('download_cv'),
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: theme.colorScheme.primary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary
                                      .withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  AppLocalizations.of(context).get('welcome'),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                AppLocalizations.of(context).get('hi_im'),
                                style: TextStyle(
                                  fontSize: 28,
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Furkan Çağlar',
                                style: TextStyle(
                                  fontSize: 72,
                                  height: 1.1,
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.onBackground,
                                ),
                              ),
                              const SizedBox(height: 16),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    AppLocalizations.of(context)
                                        .get('flutter_developer'),
                                    textStyle: TextStyle(
                                      fontSize: 36,
                                      height: 1.2,
                                      color: theme.colorScheme.onBackground
                                          .withOpacity(0.9),
                                    ),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                  TypewriterAnimatedText(
                                    AppLocalizations.of(context)
                                        .get('software_engineer'),
                                    textStyle: TextStyle(
                                      fontSize: 36,
                                      height: 1.2,
                                      color: theme.colorScheme.onBackground
                                          .withOpacity(0.9),
                                    ),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                ],
                                repeatForever: true,
                              ),
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  Pressable(
                                    onTap: () => onSectionClick(4),
                                    child: HoverScale(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 24,
                                          vertical: 12,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color: theme.colorScheme.primary
                                                  .withOpacity(0.3),
                                              blurRadius: 12,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)
                                              .get('get_in_touch'),
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: theme.colorScheme.onPrimary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Row(
                                    children: [
                                      Pressable(
                                        onTap: () => onSectionClick(3),
                                        child: HoverScale(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 24,
                                              vertical: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme.surface,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                color: theme.colorScheme.primary
                                                    .withOpacity(0.3),
                                                width: 2,
                                              ),
                                            ),
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .get('view_projects'),
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    theme.colorScheme.primary,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Pressable(
                                        onTap: () => _downloadCV(context),
                                        child: HoverScale(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 24,
                                              vertical: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme.surface,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                color: theme.colorScheme.primary
                                                    .withOpacity(0.3),
                                                width: 2,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.download_rounded,
                                                  size: 20,
                                                  color:
                                                      theme.colorScheme.primary,
                                                ),
                                                const SizedBox(width: 8),
                                                Text(
                                                  AppLocalizations.of(context)
                                                      .get('download_cv'),
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: theme
                                                        .colorScheme.primary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: theme.colorScheme.primary
                                      .withOpacity(0.2),
                                  blurRadius: 30,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Image.asset(
                                      'assets/images/pp.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            theme.colorScheme.background
                                                .withOpacity(0.2),
                                          ],
                                        ),
                                      ),
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
        ],
      ),
    );
  }
}

class _NavButton extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final ThemeData theme;

  const _NavButton({
    required this.title,
    required this.onTap,
    required this.theme,
  });

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Pressable(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 160),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isHovered
                  ? widget.theme.colorScheme.primary.withOpacity(0.08)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: isHovered ? FontWeight.w600 : FontWeight.w500,
                    color: isHovered
                        ? widget.theme.colorScheme.primary
                        : widget.theme.colorScheme.onBackground,
                  ),
                ),
                const SizedBox(height: 2),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  height: 2,
                  width: isHovered ? 22 : 0,
                  decoration: BoxDecoration(
                    color: widget.theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
