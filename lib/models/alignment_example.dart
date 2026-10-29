import 'package:flutter/material.dart';

enum DemoDirection {
  row,
  column;

  String get label => switch (this) {
    DemoDirection.row => 'Row',
    DemoDirection.column => 'Column',
  };
}

sealed class AlignmentExample {
  const AlignmentExample({
    required this.direction,
    required this.explanation,
  });

  final DemoDirection direction;
  final String explanation;

  String get alignmentName;
  String get title => '${direction.label} / $alignmentName';
}

final class MainAxisExample extends AlignmentExample {
  const MainAxisExample({
    required super.direction,
    required this.alignment,
    required super.explanation,
  });

  final MainAxisAlignment alignment;

  @override
  String get alignmentName => 'MainAxisAlignment.${alignment.name}';
}

final class CrossAxisExample extends AlignmentExample {
  const CrossAxisExample({
    required super.direction,
    required this.alignment,
    required super.explanation,
  });

  final CrossAxisAlignment alignment;

  @override
  String get alignmentName => 'CrossAxisAlignment.${alignment.name}';
}
