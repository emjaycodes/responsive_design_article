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
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 40, color: Colors.white),
    );
  }

  Widget buildMediumLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Medium Screen Layout',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 60, color: Colors.white),
        ),
        const SizedBox(height: 20.0),
        Image.asset(
          'assets/images/2.0x/flutter_logo.png',
          width: 100,
          height: 100,
        )
      ],
    );
  }

  Widget buildLargeLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/4.0x/flutter_logo.png',
          scale: 4.0,
          width: 100,
          height: 100,
        ),
        const SizedBox(width: 20.0),
        const Text(
          'Large Screen Layout',
          style: TextStyle(fontSize: 75, color: Colors.white),
        ),
      ],
    );
  }
}
