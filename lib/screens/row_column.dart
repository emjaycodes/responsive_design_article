import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column'),
      ),
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
          child: const Center(
            child: Text(
              'Item 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 100,
          color: Colors.green,
          child: const Center(
              child: Text('Item 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ))),
        ),
        const SizedBox(height: 20),
        Container(
          height: 100,
          color: Colors.orange,
          child: const Center(
            child: Text(
              'Item 3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
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
          child: const Center(
            child: Text(
              'Item 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 200,
          color: Colors.green,
          child: const Center(
            child: Text(
              'Item 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 200,
          color: Colors.orange,
          child: const Center(
            child: Text(
              'Item 3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
