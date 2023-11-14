// import 'package:flutter/material.dart';

// class SizedBoxPaddingSpacerWidget extends StatelessWidget {
//   const SizedBoxPaddingSpacerWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Adaptive Spacing'),
//         ),
//         body: Center(
//           child: Container(
//             width: 300.0,
//             height: 200.0,
//             color: Colors.blue,
//             child: LayoutBuilder(
//               builder: (context, constraints) {
//                 if (constraints.maxWidth < 600.0) {
//                   return buildSmallLayout();
//                 } else {
//                   return buildLargeLayout();
//                 }
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildSmallLayout() {
//     return Align(
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text(
//             'Small Screen Layout',
//             style: TextStyle(color: Colors.white),
//           ),
//           const SizedBox(height: 10.0),
//           const Icon(
//             Icons.star,
//             size: 30.0,
//             color: Colors.yellow,
//           ),
//           const SizedBox(height: 20.0),
//           Container(
//             width: 100.0,
//             height: 50.0,
//             color: Colors.green,
//             child: const Center(child: Text('Adaptive Space', textAlign: TextAlign.center,)),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildLargeLayout() {
//     return Align(
//       alignment: Alignment.center,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Icon(
//             Icons.star,
//             size: 50.0,
//             color: Colors.yellow,
//           ),
//           const SizedBox(width: 20.0),
//           const Text(
//             'Large Screen Layout',
//             style: TextStyle(color: Colors.white),
//             textAlign: TextAlign.center,
//           ),
//           const Spacer(),
//           Container(
//             width: 100.0,
//             height: 50.0,
//             color: Colors.green,
//             child: const Center(child: Text('Adaptive Space')),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';



class SizedBoxPaddingSpacerWidget extends StatelessWidget {
  const SizedBoxPaddingSpacerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Adaptive Spacing'),
        ),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Space Example',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Using SizedBox:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 200.0,
                height: 50.0,
                color: Colors.blue,
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Using Spacer:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.green,
                  ),
                  const Spacer(),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Using Padding:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  width: 150.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildSmallLayout() {
  //   return Align(
  //     alignment: Alignment.center,
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         const Text(
  //           'Small Screen Layout',
  //           style: TextStyle(color: Colors.white),
  //         ),
  //         const SizedBox(height: 10.0),
  //         const Icon(
  //           Icons.star,
  //           size: 30.0,
  //           color: Colors.yellow,
  //         ),
  //         const SizedBox(height: 20.0),
  //         Container(
  //           width: 100.0,
  //           height: 50.0,
  //           color: Colors.green,
  //           child: const Center(
  //             child: Text(
  //               'Adaptive Space',
  //               textAlign: TextAlign.center,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget buildLargeLayout() {
  //   return Align(
  //     alignment: Alignment.center,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         const Icon(
  //           Icons.star,
  //           size: 50.0,
  //           color: Colors.yellow,
  //         ),
  //         const SizedBox(width: 20.0),
  //         const Text(
  //           'Large Screen Layout',
  //           style: TextStyle(color: Colors.white),
  //           textAlign: TextAlign.center,
  //         ),
  //         const Spacer(), // Spacer expands to fill remaining space
  //         Container(
  //           width: 100.0,
  //           height: 50.0,
  //           color: Colors.green,
  //           child: const Center(child: Text('Adaptive Space')),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
