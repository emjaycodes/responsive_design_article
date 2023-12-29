import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey[300],
          padding: const EdgeInsets.all(20.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600.0) {
                return buildNarrowWidget();
              } else {
                return buildWideWidget();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildNarrowWidget() {
    return Container(
      width: 350.0,
      height: 125.0,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Narrow Layout',
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }

  Widget buildWideWidget() {
    return Container(
      width: 700.0,
      height: 300.0,
      color: Colors.green,
      child: const Center(
        child: Text(
          'Wide Layout',
          style: TextStyle(color: Colors.white, fontSize: 60.0),
        ),
      ),
    );
  }
}
