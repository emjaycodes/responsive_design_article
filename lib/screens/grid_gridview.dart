import 'package:flutter/material.dart';

class ResponsiveGridView extends StatelessWidget {
  const ResponsiveGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: LayoutBuilder(
              builder: (context, constraints) {
                return buildResponsiveGrid(
                  constraints.maxWidth);
              },
            ),
          ),
    );
  }

  Widget buildResponsiveGrid(double maxWidth) {
    // Determine the number of columns based on screen width
    int columns = (maxWidth / 150).floor();

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.green,
          child: Center(
            child: Text(
              'Item $index',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
