import 'package:flutter/material.dart';

// class RowColumnWidget extends StatelessWidget {
//   const RowColumnWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Row and Column'),
//         ),
//         body: Center(
//           child: Container(
//             width: 300.0,
//             height: 200.0,
//             color: Colors.blue,
//             child: LayoutBuilder(
//               builder: (context, constraints) {
//                 if (constraints.maxWidth < 400.0) {
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
//     return const Column(
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
//     );
//   }

//   Widget buildLargeLayout() {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(
//           Icons.star,
//           size: 50.0,
//           color: Colors.yellow,
//         ),
//         SizedBox(width: 20.0),
//         Text(
//           'Large Screen Layout',
//           style: TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }


class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey[300],
          padding: const EdgeInsets.all(20.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                // For smaller screens, use a Column layout
                return buildColumnLayout();
              } else {
                // For larger screens, use a Row layout
                return buildRowLayout();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildColumnLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 100,
          color: Colors.blue,
          child: const Center(child: Text('Item 1', style: TextStyle(color: Colors.white))),
        ),
        const SizedBox(height: 20),
        Container(
          height: 100,
          color: Colors.green,
          child: const Center(child: Text('Item 2', style: TextStyle(color: Colors.white))),
        ),
        const SizedBox(height: 20),
        Container(
          height: 100,
          color: Colors.orange,
          child: const Center(child: Text('Item 3', style: TextStyle(color: Colors.white))),
        ),
      ],
    );
  }

  Widget buildRowLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 150,
          height: 200,
          color: Colors.blue,
          child: const Center(child: Text('Item 1', style: TextStyle(color: Colors.white))),
        ),
        Container(
          width: 150,
          height: 200,
          color: Colors.green,
          child: const Center(child: Text('Item 2', style: TextStyle(color: Colors.white))),
        ),
        Container(
          width: 150,
          height: 200,
          color: Colors.orange,
          child: const Center(child: Text('Item 3', style: TextStyle(color: Colors.white))),
        ),
      ],
    );
  }
}
