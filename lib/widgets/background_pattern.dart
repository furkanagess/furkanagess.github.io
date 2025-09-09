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
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.overlay,
              gradient: RadialGradient(
                center: isEven
                    ? const Alignment(-0.8, -0.6)
                    : const Alignment(0.8, -0.6),
                radius: 1.1,
                colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.05),
                  Colors.transparent,
                  Colors.transparent,
                ],
                stops: const [0.0, 0.4, 1.0],
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: ShaderMask(
            blendMode: BlendMode.srcOut,
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Theme.of(context).colorScheme.primary.withOpacity(0.03),
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
        child,
      ],
    );
  }
}
