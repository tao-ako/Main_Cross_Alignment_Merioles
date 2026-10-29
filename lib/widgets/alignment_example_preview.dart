import 'package:flutter/material.dart';

import '../models/alignment_example.dart';
import 'column_alignment_demo.dart';
import 'row_alignment_demo.dart';

class AlignmentExamplePreview extends StatelessWidget {
  const AlignmentExamplePreview({required this.example, super.key});

  final AlignmentExample example;

  static const _colors = <Color>[
    Color(0xFF4567D5),
    Color(0xFFE58A36),
    Color(0xFF2E9C89),
  ];

  @override
  Widget build(BuildContext context) {
    if (example.direction == DemoDirection.row) {
      return RowAlignmentDemo(
        mainAxisAlignment: switch (example) {
          MainAxisExample(:final alignment) => alignment,
          CrossAxisExample() => MainAxisAlignment.start,
        },
        crossAxisAlignment: switch (example) {
          CrossAxisExample(:final alignment) => alignment,
          MainAxisExample() => CrossAxisAlignment.center,
        },
        textBaseline: TextBaseline.alphabetic,
        height: example is MainAxisExample ? 66 : 88,
        children: _rowChildren(example),
      );
    }

    return ColumnAlignmentDemo(
      mainAxisAlignment: switch (example) {
        MainAxisExample(:final alignment) => alignment,
        CrossAxisExample() => MainAxisAlignment.start,
      },
      crossAxisAlignment: switch (example) {
        CrossAxisExample(:final alignment) => alignment,
        MainAxisExample() => CrossAxisAlignment.center,
      },
      textBaseline: TextBaseline.alphabetic,
      height: example is MainAxisExample ? 154 : 112,
      children: _columnChildren(example),
    );
  }

  List<Widget> _rowChildren(AlignmentExample example) {
    return switch (example) {
      MainAxisExample() => List.generate(
        3,
        (index) => _Tile(
          label: '${index + 1}',
          color: _colors[index],
          width: 48,
          height: 42,
        ),
      ),
      CrossAxisExample(alignment: CrossAxisAlignment.baseline) => [
        _BaselineText('Small', 14, _colors[0]),
        _BaselineText('Baseline', 27, _colors[1]),
        _BaselineText('Text', 19, _colors[2]),
      ],
      CrossAxisExample(alignment: CrossAxisAlignment.stretch) => List.generate(
        3,
        (index) => _Tile(
          label: '${index + 1}',
          color: _colors[index],
          width: 64,
          height: null,
        ),
      ),
      CrossAxisExample() => List.generate(
        3,
        (index) => _Tile(
          label: '${index + 1}',
          color: _colors[index],
          width: 64,
          height: 28 + (index * 24),
        ),
      ),
    };
  }

  List<Widget> _columnChildren(AlignmentExample example) {
    return switch (example) {
      MainAxisExample() => List.generate(
        3,
        (index) => _Tile(
          label: '${index + 1}',
          color: _colors[index],
          width: 44,
          height: 34,
        ),
      ),
      CrossAxisExample(alignment: CrossAxisAlignment.baseline) => [
        _BaselineText('Small text', 14, _colors[0]),
        _BaselineText('Larger text', 23, _colors[1]),
        _BaselineText('Medium', 18, _colors[2]),
      ],
      CrossAxisExample(alignment: CrossAxisAlignment.stretch) => List.generate(
        3,
        (index) => _Tile(
          label: 'Item ${index + 1}',
          color: _colors[index],
          width: null,
          height: 26,
        ),
      ),
      CrossAxisExample() => List.generate(
        3,
        (index) => _Tile(
          label: 'Item ${index + 1}',
          color: _colors[index],
          width: 88 + (index * 44),
          height: 26,
        ),
      ),
    };
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.label,
    required this.color,
    required this.width,
    required this.height,
  });

  final String label;
  final Color color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _BaselineText extends StatelessWidget {
  const _BaselineText(this.text, this.fontSize, this.color);

  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
