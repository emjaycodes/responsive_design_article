// import 'package:flutter/material.dart';

// class LayoutWidget extends StatelessWidget {
//   const LayoutWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Layout'),
//         ),
//         body: LayoutBuilder(
//                 builder: (context, constraints) {
//                   if (constraints.maxWidth < 600.0) {
//                     return  
//                      Center(
//           child: Container(
//             width: 300.0,
//             height: 200.0,
//             color: Colors.blue,
//             child:
//                     Center(
//                       child: Text(
//                         'Small Screen Layout',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     )
//           )
//                      );
//                   } else {
//                     return  Center(
//           child: Container(
//             width: 300.0,
//             height: 200.0,
//             color: Colors.blue,
//             child: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Large Screen Layout',
//                             style: TextStyle(color: Colors.black),
//                           ),
//                           SizedBox(height: 20.0),
//                           Icon(
//                             Icons.star,
//                             size: 50.0,
//                             color: Colors.yellow,
//                           ),
//                         ],
//                       ),
//                     )));
//                   }
//                 },
//               ),
//             ),
//           );
//   }
// }


import 'package:flutter/material.dart';

class LayoutBuilderExample  extends StatelessWidget {
  const LayoutBuilderExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LayoutBuilder'),),
      body: Center(
        child: Container(
          color: Colors.grey[300],
          padding: const EdgeInsets.all(20.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600.0) {
                return buildNarrowWidget();
              } else {
                return buildWideWidget();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildNarrowWidget() {
    return Container(
      width: 200.0,
      height: 100.0,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Narrow Layout',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }

  Widget buildWideWidget() {
    return Container(
      width: 400.0,
      height: 100.0,
      color: Colors.green,
      child: const Center(
        child: Text(
          'Wide Layout',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
