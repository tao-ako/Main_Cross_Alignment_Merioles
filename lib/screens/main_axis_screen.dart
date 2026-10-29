import 'package:flutter/material.dart';

import '../models/alignment_examples.dart';
import '../widgets/alignment_demo_card.dart';
import '../widgets/alignment_example_preview.dart';
import '../widgets/section_header.dart';

class MainAxisScreen extends StatelessWidget {
  const MainAxisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      children: [
        const SectionHeader(
          title: 'MainAxisAlignment',
          description: 'Main axis: horizontal in a Row, vertical in a Column.',
          icon: Icons.swap_horiz_rounded,
        ),
        for (final example in mainAxisExamples)
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
