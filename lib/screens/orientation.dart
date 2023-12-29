import 'package:flutter/material.dart';
import 'dart:math';

class OrientationLayoutExample extends StatelessWidget {
  const OrientationLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation Layout Example'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.grey[300],
              child: orientation == Orientation.portrait
                  ? buildPortraitLayout()
                  : buildLandscapeLayout(),
            ),
          );
        },
      ),
    );
  }

  Widget buildPortraitLayout() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.phone_android,
          size: 100.0,
          color: Colors.blue,
        ),
        SizedBox(height: 20.0),
        Text(
          'Portrait Mode',
          style: TextStyle(fontSize: 24.0),
        ),
      ],
    );
  }

  Widget buildLandscapeLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: pi / 2.0,
          child: const Icon(
            Icons.phone_android,
            size: 100.0,
            color: Colors.green,
          ),
        ),
        const SizedBox(width: 20.0),
        const Text(
          'Landscape Mode',
          style: TextStyle(fontSize: 24.0),
        ),
      ],
    );
  }
}
