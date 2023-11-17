import 'package:flutter/material.dart';

class AlignAlinment extends StatelessWidget {
  const AlignAlinment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Align and Alinment'),
        ),
        body:  LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600.0) {
                  return buildSmallLayout();
                } else {
                  return buildLargeLayout();
                }
              },
            ),
          ),
    );
  }

  Widget buildSmallLayout() {
    return  Align(
      alignment: Alignment.center,
      child: 
       Center(
          child: Container(
            width: 300.0,
            height: 200.0,
            color: Colors.blue,
            child:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Small Screen Layout',
            // style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    )));
  }

  Widget buildLargeLayout() {
    return const Align(
      alignment: Alignment.center,
      child: Row(
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
            // style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
