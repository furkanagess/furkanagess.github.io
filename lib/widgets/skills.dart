import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/localization/app_localizations.dart';
import 'package:portfolio/widgets/interactive.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  void _showFirebaseDetails(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: isSmallScreen ? MediaQuery.of(context).size.width * 0.9 : 600,
          padding: EdgeInsets.all(isSmallScreen ? 20 : 30),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/firebase-svg.svg',
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    AppLocalizations.of(context).get('firebase_expertise'),
                    style: TextStyle(
                      fontSize: isSmallScreen ? 20 : 24,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_firebase_chip_1')),
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_firebase_chip_2')),
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_firebase_chip_3')),
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_firebase_chip_4')),
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_firebase_chip_5')),
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_firebase_chip_6')),
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_firebase_chip_7')),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.primary.withOpacity(0.1),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).get('skill_firebase_title'),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppLocalizations.of(context).get('skill_firebase_desc'),
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: theme.colorScheme.onSurface.withOpacity(0.8),
                      ),
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

  void _showAndroidDetails(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: isSmallScreen ? MediaQuery.of(context).size.width * 0.9 : 600,
          padding: EdgeInsets.all(isSmallScreen ? 20 : 30),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/android-color.svg',
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    AppLocalizations.of(context).get('android_expertise'),
                    style: TextStyle(
                      fontSize: isSmallScreen ? 20 : 24,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_android_chip_1')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_android_chip_2')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_android_chip_3')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_android_chip_4')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_android_chip_5')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_android_chip_6')),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.primary.withOpacity(0.1),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).get('skill_android_title'),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      AppLocalizations.of(context).get('skill_android_desc'),
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: theme.colorScheme.onSurface.withOpacity(0.8),
                      ),
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

  void _showFlutterDetails(BuildContext context) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: isSmallScreen ? MediaQuery.of(context).size.width * 0.9 : 600,
          padding: EdgeInsets.all(isSmallScreen ? 20 : 30),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/flutter-color.svg',
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    AppLocalizations.of(context).get('flutter_expertise'),
                    style: TextStyle(
                      fontSize: isSmallScreen ? 20 : 24,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_1')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_2')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_3')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_4')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_5')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_6')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_7')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_8')),
                  _buildSkillChip(theme,
                      AppLocalizations.of(context).get('skill_flutter_chip_9')),
                  _buildSkillChip(
                      theme,
                      AppLocalizations.of(context)
                          .get('skill_flutter_chip_10')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillChip(ThemeData theme, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 13.5,
          fontWeight: FontWeight.w500,
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }

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
        child: Column(
          children: [
            Reveal(
              child: Row(
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
                      AppLocalizations.of(context).get('skills_title'),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Reveal(
              delay: const Duration(milliseconds: 80),
              child: Text(
                AppLocalizations.of(context).get('technologies'),
                style: TextStyle(
                  fontSize: isSmallScreen ? 28 : 36,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onBackground,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Reveal(
              delay: const Duration(milliseconds: 140),
              child: Text(
                AppLocalizations.of(context).get('click_details'),
                style: TextStyle(
                  fontSize: isSmallScreen ? 16 : 18,
                  color: theme.colorScheme.onBackground.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            // Visible Flutter details panel
            Reveal(
              delay: const Duration(milliseconds: 180),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(maxWidth: 900),
                padding: EdgeInsets.all(isSmallScreen ? 20 : 28),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: theme.colorScheme.primary.withOpacity(0.08),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: isSmallScreen
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgPicture.asset(
                            'assets/images/flutter-color.svg',
                            height: 30,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)
                                .get('flutter_rec_title'),
                            style: TextStyle(
                              fontSize: isSmallScreen ? 22 : 24,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Experience badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: theme.colorScheme.primary.withOpacity(0.18),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.work_rounded,
                            size: 18,
                            color: theme.colorScheme.primary.withOpacity(0.95),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            AppLocalizations.of(context).get('flutter_rec_exp'),
                            style: TextStyle(
                              fontSize: isSmallScreen ? 13 : 14,
                              fontWeight: FontWeight.w600,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      AppLocalizations.of(context).get('flutter_rec_intro'),
                      style: TextStyle(
                        fontSize: isSmallScreen ? 14 : 16,
                        height: 1.6,
                        color: theme.colorScheme.onSurface.withOpacity(0.85),
                      ),
                      textAlign:
                          isSmallScreen ? TextAlign.center : TextAlign.left,
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b1')),
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b2')),
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b3')),
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b4')),
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b5')),
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b6')),
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b7')),
                        _richBullet(theme,
                            AppLocalizations.of(context).get('flutter_rec_b8')),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      alignment: isSmallScreen
                          ? WrapAlignment.center
                          : WrapAlignment.start,
                      children: [
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_1')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_2')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_3')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_4')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_5')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_6')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_7')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_8')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_9')),
                        _buildSkillChip(
                            theme,
                            AppLocalizations.of(context)
                                .get('skill_flutter_chip_10')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Wrap(
                spacing: 30,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: [
                  Reveal(
                    delay: const Duration(milliseconds: 100),
                    child: _buildSkillCard(
                      context,
                      'Android',
                      'assets/images/android-color.svg',
                      onTap: () => _showAndroidDetails(context),
                    ),
                  ),
                  Reveal(
                    delay: const Duration(milliseconds: 180),
                    child: _buildSkillCard(
                      context,
                      'Firebase',
                      'assets/images/firebase-svg.svg',
                      onTap: () => _showFirebaseDetails(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillCard(
    BuildContext context,
    String title,
    String iconPath, {
    VoidCallback? onTap,
  }) {
    final theme = Theme.of(context);
    final isSmallScreen = MediaQuery.of(context).size.width < 768;
    return HoverScale(
      borderRadius: BorderRadius.circular(15),
      child: Pressable(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: isSmallScreen ? 150 : 180,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(0.08),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  iconPath,
                  height: 50,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              if (onTap != null) ...[
                const SizedBox(height: 12),
                Text(
                  AppLocalizations.of(context).get('click_details'),
                  style: TextStyle(
                    fontSize: 14,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _bullet(ThemeData theme, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_circle_rounded,
            size: 18,
            color: theme.colorScheme.primary.withOpacity(0.9),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: theme.colorScheme.onSurface.withOpacity(0.85),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _richBullet(ThemeData theme, String text) {
    final parts = text.split(':');
    final label = parts.isNotEmpty ? parts.first.trim() : '';
    final rest = parts.length > 1 ? parts.sublist(1).join(':').trim() : '';
    final tokens = rest.isEmpty
        ? <String>[]
        : rest.split(',').map((s) => s.trim()).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_circle_rounded,
            size: 18,
            color: theme.colorScheme.primary.withOpacity(0.95),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: label.isNotEmpty ? '$label: ' : '',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.primary,
                  fontSize: 14,
                ),
              ),
              if (tokens.isEmpty)
                TextSpan(
                  text: rest,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: theme.colorScheme.onSurface.withOpacity(0.88),
                  ),
                )
              else ...[
                for (int i = 0; i < tokens.length; i++) ...[
                      TextSpan(
                        text: tokens[i],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.onSurface,
                          fontSize: 14,
                        ),
                      ),
                  if (i != tokens.length - 1)
                    TextSpan(
                      text: ', ',
                      style: TextStyle(
                        fontSize: 14,
                        color: theme.colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                ]
              ],
            ])),
          ),
        ],
      ),
    );
  }
}
