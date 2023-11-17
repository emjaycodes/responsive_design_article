import 'package:flutter/material.dart';

class ResponsiveImage extends StatelessWidget {
  const ResponsiveImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Image'),
        ),
        body:  LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 400.0) {
                  return buildSmallLayout();
                } else {
                  return buildLargeLayout();
                }
              },
            ),
          ),
        );
  }

  Widget buildSmallLayout() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/2.0x/flutter_logo.png',
            width: 100.0,
            height: 100.0,
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Small Screen Layout',
            // style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildLargeLayout() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/4.0x/flutter_logo.png',
            
            width: 150.0,
            height: 150.0,
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Large Screen Layout',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
