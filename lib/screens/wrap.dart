import 'package:flutter/material.dart';

class ResponsiveWrap extends StatelessWidget {
  const ResponsiveWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Wrap Example'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return buildResponsiveLayout(constraints.maxWidth);
          },
        ),
      ),
    );
  }

  Widget buildResponsiveLayout(double maxWidth) {
    if (maxWidth < 400.0) {
      return buildLargeLayout();
    } else {
      return buildLargeLayout();
    }
  }

  Widget buildSmallLayout() {
    // Simulate containers overflowing without Wrap widget
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        12,
        (index) => Container(
          margin: const EdgeInsets.all(8.0),
          width: 100.0,
          height: 100.0,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Item $index',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLargeLayout() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12.0,
      runSpacing: 12.0,
      children: List.generate(
        15,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
