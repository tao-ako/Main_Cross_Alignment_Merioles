import 'package:flutter/material.dart';

import 'cross_axis_screen.dart';
import 'main_axis_screen.dart';

class AlignmentHomeScreen extends StatelessWidget {
  const AlignmentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Merioles - Alignment Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.swap_horiz_rounded), text: 'Main Axis'),
              Tab(
                icon: Icon(Icons.align_vertical_center_rounded),
                text: 'Cross Axis',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [MainAxisScreen(), CrossAxisScreen()],
        ),
      ),
    );
  }
}
