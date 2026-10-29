import 'package:flutter/material.dart';

import '../models/alignment_examples.dart';
import '../widgets/alignment_demo_card.dart';
import '../widgets/alignment_example_preview.dart';
import '../widgets/section_header.dart';

class CrossAxisScreen extends StatelessWidget {
  const CrossAxisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      children: [
        const SectionHeader(
          title: 'CrossAxisAlignment',
          description: 'Cross axis: vertical in a Row, horizontal in a Column.',
          icon: Icons.align_vertical_center_rounded,
        ),
        for (final example in crossAxisExamples)
          AlignmentDemoCard(
            key: ValueKey(example.title),
            title: example.title,
            explanation: example.explanation,
            demo: AlignmentExamplePreview(example: example),
          ),
      ],
    );
  }
}
