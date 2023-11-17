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
      style: TextStyle(
        fontSize: 30,
        color: Colors.white),
    );
  }

  Widget buildMediumLayout() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Medium Screen Layout',
          
          style: TextStyle(
            fontSize: 30,
            color: Colors.white),
        ),
        const SizedBox(height: 20.0),
        Image.asset('assets/images/2.0x/flutter_logo.png')
      ],
    );
  }

  Widget buildLargeLayout() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset('assets/images/3.0x/flutter_logo.png'),
        const SizedBox(width: 20.0),
        const Text(
          'Large Screen Layout',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white),
        ),
      ],
    );
  }
}
