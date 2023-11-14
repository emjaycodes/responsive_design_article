import 'package:flutter/material.dart';

// class ResponsiveWrap extends StatelessWidget {
//   const ResponsiveWrap({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Wrap'),
//         ),
//         body: Center(
//           child: Container(
//             width: 300.0,
//             height: 200.0,
//             color: Colors.blue,
//             child: Center(
//               child: LayoutBuilder(
//                 builder: (context, constraints) {
//                   if (constraints.maxWidth < 400.0) {
//                     return buildSmallLayout();
//                   } else {
//                     return buildLargeLayout();
//                   }
//                 },
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildSmallLayout() {
//     return const Wrap(
//       alignment: WrapAlignment.center,
//       children: [
//         Text(
//           'Small Screen Layout',
//           style: TextStyle(color: Colors.white),
//         ),
//         SizedBox(width: 10.0),
//         Icon(
//           Icons.star,
//           size: 30.0,
//           color: Colors.yellow,
//         ),
//       ],
//     );
//   }

//   Widget buildLargeLayout() {
//     return const Wrap(
//       alignment: WrapAlignment.center,
//       children: [
//         Icon(
//           Icons.star,
//           size: 50.0,
//           color: Colors.yellow,
//         ),
//         SizedBox(width: 20.0),
//         Text(
//           'Large Screen Layout with Wrapping',
//           style: TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }


class ResponsiveWrap extends StatelessWidget {
  const ResponsiveWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Wrap Example'),
        ),
        body:  LayoutBuilder(
              builder: (context, constraints) {
                return buildResponsiveLayout(constraints.maxWidth);
              },
            ),
          ),
        );
  }

  Widget buildResponsiveLayout(double maxWidth) {
    if (maxWidth < 400.0) {
      return buildSmallLayout();
    } else {
      return buildLargeLayout();
    }
  }

  // Widget buildSmallLayout() {
  //   return Wrap(
  //     alignment: WrapAlignment.center,
  //     spacing: 8.0,
  //     runSpacing: 8.0,
  //     children: List.generate(
  //       11,
  //       (index) => Container(
  //         width: 80.0,
  //         height: 80.0,
  //         color: Colors.green,
  //         child: Center(
  //           child: Text(
  //             'Item $index',
  //             style: TextStyle(color: Colors.white),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  
  Widget buildSmallLayout() {
    // Simulate containers overflowing without Wrap widget
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        12,
        (index) => Container(
          margin: EdgeInsets.all(8.0),
          width: 80.0,
          height: 80.0,
          color: Colors.green,
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
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
        20,
        (index) => Container(
          width: 100.0,
          height: 100.0,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
