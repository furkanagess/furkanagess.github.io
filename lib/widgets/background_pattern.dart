import 'package:flutter/material.dart';

class BackgroundPattern extends StatelessWidget {
  final Widget child;
  final bool isEven;

  const BackgroundPattern({
    super.key,
    required this.child,
    this.isEven = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
            gradient: LinearGradient(
              begin: isEven ? Alignment.topLeft : Alignment.topRight,
              end: isEven ? Alignment.bottomRight : Alignment.bottomLeft,
              colors: [
                Theme.of(context).colorScheme.background.withOpacity(0.97),
                Theme.of(context).colorScheme.background.withOpacity(0.92),
                Theme.of(context).colorScheme.background.withOpacity(0.95),
              ],
            ),
          ),
        ),
        // Large soft glow
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.overlay,
              gradient: RadialGradient(
                center: isEven
                    ? const Alignment(-0.8, -0.6)
                    : const Alignment(0.8, -0.6),
                radius: 1.2,
                colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.08),
                  Colors.transparent,
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
        ),
        // Secondary accent glow
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.overlay,
              gradient: RadialGradient(
                center: isEven
                    ? const Alignment(0.7, 0.8)
                    : const Alignment(-0.7, 0.8),
                radius: 0.9,
                colors: [
                  Theme.of(context).colorScheme.secondary.withOpacity(0.06),
                  Colors.transparent,
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
        ),
        // Subtle vertical sheen
        Positioned.fill(
          child: ShaderMask(
            blendMode: BlendMode.srcOut,
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Theme.of(context).colorScheme.primary.withOpacity(0.05),
                Colors.transparent,
              ],
              stops: const [0.2, 0.5, 0.8],
            ).createShader(bounds),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        // Grainy overlay for texture
        Positioned.fill(
          child: IgnorePointer(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.02),
                    Colors.transparent,
                    Colors.white.withOpacity(0.015),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.35, 0.7, 1.0],
                ),
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
