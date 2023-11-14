import 'package:flutter/material.dart';

class OrientationLandscapeProtrait extends StatelessWidget {
  const OrientationLandscapeProtrait({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Landscape and Portrait'),
        ),
        body: Center(
          child: Container(
            width: 300.0,
            height: 200.0,
            color: Colors.blue,
            child:  OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return buildPortraitLayout();
          } else if (orientation == Orientation.landscape){
            return buildLandscapeLayout();
          }
          return Center(
          child: Text(
            'Unknown Orientation',
            style: TextStyle(fontSize: 24.0),
          ),
        );
                
        }
          ),
        ),
      ),
      )
    );
  }

  //   Widget buildSmallLayout() {
  //   return OrientationBuilder(
  //     builder: (context, orientation) {
  //       return Align(
  //         alignment: Alignment.center,
  //         child: orientation == Orientation.portrait
  //             ? buildPortraitLayout()
  //             : buildLandscapeLayout(),
  //       );
  //     },
  //   );
  // }

  // Widget buildSmallLayout() {
  //   return const Align(
  //     alignment: Alignment.center,
  //     child: 
  //     Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Text(
  //           'Small Screen Layout',
  //           style: TextStyle(color: Colors.white),
  //         ),
  //         SizedBox(height: 10.0),
  //         Icon(
  //           Icons.star,
  //           size: 30.0,
  //           color: Colors.yellow,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget buildLargeLayout() {
  //   return OrientationBuilder(
  //     builder: (context, orientation) {
  //       return Align(
  //         alignment: Alignment.center,
  //         child: orientation == Orientation.portrait
  //             ? buildPortraitLayout()
  //             : buildLandscapeLayout(),
  //       );
  //     },
  //   );
  // }

  Widget buildPortraitLayout() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 50.0,
          color: Colors.yellow,
        ),
        SizedBox(height: 20.0),
        Text(
          'Portrait Layout',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget buildLandscapeLayout() {
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
          'Landscape Layout',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
