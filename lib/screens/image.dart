import 'package:flutter/material.dart';

class ResponsiveImage extends StatelessWidget {
  const ResponsiveImage({super.key});

  @override
  Widget build(BuildContext context) {
    double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Using Image.asset to load images based on device pixel ratio
            Image.asset(
              getImageBasedOnDevicePixelRatio(context),
            ),
            const SizedBox(height: 20),
            if (devicePixelRatio > 2.0) ...{
              const Text('High Pixel Ratio Device'),
            } else if (devicePixelRatio > 1.5) ...{
              const Text('Medium Pixel Ratio Device'),
            } else ...{
              const Text('Normal Pixel Ratio Device')
            }
          ],
        ),
      ),
    );
  }

  String getImageBasedOnDevicePixelRatio(
    BuildContext context,
  ) {
    // Default image path
    String imagePath = 'assets/images/flutter_logo.png';
    double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    // Check device pixel ratio and load appropriate image
    if (devicePixelRatio > 2.0) {
      imagePath =
          'assets/images/4.0x/flutter_logo.png'; // 4x image for higher density devices
    } else if (devicePixelRatio > 1.5) {
      imagePath =
          'assets/images/2.0x/flutter_logo.png'; // 2x image for medium density devices
    }
    return imagePath;
  }
}
