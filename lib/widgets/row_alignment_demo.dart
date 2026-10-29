import 'package:flutter/material.dart';

class RowAlignmentDemo extends StatelessWidget {
  const RowAlignmentDemo({
    required this.children,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.height,
    this.textBaseline,
    super.key,
  });

  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double height;
  final TextBaseline? textBaseline;

  @override
  Widget build(BuildContext context) {
    return _LayoutBoundary(
      height: height,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        textBaseline: textBaseline,
        children: children,
      ),
    );
  }
}

class _LayoutBoundary extends StatelessWidget {
  const _LayoutBoundary({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        border: Border.all(color: colorScheme.outline),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(10),
      child: SizedBox(height: height, child: child),
    );
  }
}
