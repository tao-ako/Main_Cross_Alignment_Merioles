import 'package:flutter/material.dart';

import 'alignment_example.dart';

const mainAxisExamples = <MainAxisExample>[
  MainAxisExample(
    direction: DemoDirection.row,
    alignment: MainAxisAlignment.center,
    explanation: 'The children sit together in the center of the Row’s '
        'horizontal main axis.',
  ),
  MainAxisExample(
    direction: DemoDirection.row,
    alignment: MainAxisAlignment.spaceAround,
    explanation: 'Each child gets equal space around it. The outer gaps are '
        'half the size of the gaps between children.',
  ),
  MainAxisExample(
    direction: DemoDirection.row,
    alignment: MainAxisAlignment.spaceBetween,
    explanation: 'The first and last children touch the ends of the Row; '
        'the remaining space is placed between children.',
  ),
  MainAxisExample(
    direction: DemoDirection.row,
    alignment: MainAxisAlignment.spaceEvenly,
    explanation: 'The free horizontal space is divided into equal gaps '
        'before, between, and after the children.',
  ),
  MainAxisExample(
    direction: DemoDirection.row,
    alignment: MainAxisAlignment.start,
    explanation: 'The children are grouped at the start of the Row’s '
        'horizontal main axis.',
  ),
  MainAxisExample(
    direction: DemoDirection.row,
    alignment: MainAxisAlignment.end,
    explanation: 'The children are grouped at the end of the Row’s '
        'horizontal main axis.',
  ),
  MainAxisExample(
    direction: DemoDirection.column,
    alignment: MainAxisAlignment.center,
    explanation: 'The children sit together in the center of the Column’s '
        'vertical main axis.',
  ),
  MainAxisExample(
    direction: DemoDirection.column,
    alignment: MainAxisAlignment.spaceAround,
    explanation: 'Each child gets equal space around it vertically. The '
        'outer gaps are half the size of the gaps between children.',
  ),
  MainAxisExample(
    direction: DemoDirection.column,
    alignment: MainAxisAlignment.spaceBetween,
    explanation: 'The first and last children touch the top and bottom; '
        'the remaining space is placed between children.',
  ),
  MainAxisExample(
    direction: DemoDirection.column,
    alignment: MainAxisAlignment.spaceEvenly,
    explanation: 'The free vertical space is divided into equal gaps '
        'before, between, and after the children.',
  ),
  MainAxisExample(
    direction: DemoDirection.column,
    alignment: MainAxisAlignment.start,
    explanation: 'The children are grouped at the top of the Column’s '
        'vertical main axis.',
  ),
  MainAxisExample(
    direction: DemoDirection.column,
    alignment: MainAxisAlignment.end,
    explanation: 'The children are grouped at the bottom of the Column’s '
        'vertical main axis.',
  ),
];

const crossAxisExamples = <CrossAxisExample>[
  CrossAxisExample(
    direction: DemoDirection.row,
    alignment: CrossAxisAlignment.start,
    explanation: 'A Row’s cross axis is vertical, so its children align '
        'with the top edge.',
  ),
  CrossAxisExample(
    direction: DemoDirection.row,
    alignment: CrossAxisAlignment.end,
    explanation: 'A Row’s cross axis is vertical, so its children align '
        'with the bottom edge.',
  ),
  CrossAxisExample(
    direction: DemoDirection.row,
    alignment: CrossAxisAlignment.baseline,
    explanation: 'The alphabetic baselines of the differently sized text '
        'widgets line up.',
  ),
  CrossAxisExample(
    direction: DemoDirection.row,
    alignment: CrossAxisAlignment.center,
    explanation: 'The children are centered vertically on the Row’s '
        'cross axis.',
  ),
  CrossAxisExample(
    direction: DemoDirection.row,
    alignment: CrossAxisAlignment.stretch,
    explanation: 'With a bounded height, children without a fixed height '
        'stretch to fill the Row vertically.',
  ),
  CrossAxisExample(
    direction: DemoDirection.column,
    alignment: CrossAxisAlignment.start,
    explanation: 'A Column’s cross axis is horizontal, so its children '
        'align with the left edge.',
  ),
  CrossAxisExample(
    direction: DemoDirection.column,
    alignment: CrossAxisAlignment.end,
    explanation: 'A Column’s cross axis is horizontal, so its children '
        'align with the right edge.',
  ),
  CrossAxisExample(
    direction: DemoDirection.column,
    alignment: CrossAxisAlignment.baseline,
    explanation: 'Baseline positioning applies to horizontal Rows, not '
        'vertical Columns. Flutter accepts this value here but lays these '
        'children out at the start of the cross axis.',
  ),
  CrossAxisExample(
    direction: DemoDirection.column,
    alignment: CrossAxisAlignment.center,
    explanation: 'The children are centered horizontally on the Column’s '
        'cross axis.',
  ),
  CrossAxisExample(
    direction: DemoDirection.column,
    alignment: CrossAxisAlignment.stretch,
    explanation: 'With a bounded width, children without a fixed width '
        'stretch to fill the Column horizontally.',
  ),
];
