import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Use media query to get the screen size
    var screenSize = MediaQuery.of(context).size;

    // Define breakpoints for different screen sizes
    double breakpointSmall = 600.0;
    double breakpointMedium = 900.0;

    // Choose the appropriate layout based on screen width
    Widget content;
    if (screenSize.width < breakpointSmall) {
      content = buildSmallLayout();
    } else if (screenSize.width < breakpointMedium) {
      content = buildMediumLayout();
    } else {
      content = buildLargeLayout();
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MediaQuery'),
        ),
        body: Center(
          child: Container(
            width: screenSize.width * 0.8,
            height: screenSize.height * 0.5,
            color: Colors.blue,
            child: Center(child: content),
          ),
        ),
      ),
    );
  }

  Widget buildSmallLayout() {
    return const Text(
      'Small Screen Layout',
      style: TextStyle(color: Colors.white),
    );
  }

  Widget buildMediumLayout() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Medium Screen Layout',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 20.0),
        Icon(
          Icons.star,
          size: 50.0,
          color: Colors.yellow,
        ),
      ],
    );
  }

  Widget buildLargeLayout() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 50.0,
          color: Colors.yellow,
        ),
        SizedBox(width: 20.0),
        Text(
          'Large Screen Layout',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
