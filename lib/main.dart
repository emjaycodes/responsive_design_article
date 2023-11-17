import 'package:flutter/material.dart';
import 'package:responsive_design_article/routes.dart';

// import 'screens/align_alignment.dart';
// import 'screens/grid_gridview.dart';
// import 'screens/image.dart';
// import 'screens/layout.dart';
// import 'screens/media_queries.dart';
// import 'screens/orientation.dart';
// import 'screens/row_column.dart';
// import 'screens/spacer_sizedbox_padding.dart';
// import 'screens/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: AppRoutes.current,
      // home:  const ResponsiveGridView(),
    );
  }
}


class NonResponsiveWidget extends StatelessWidget {
  const NonResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Non-Responsive Widget'),),
      body: Center(
        child: Container(
          width: 200.0,
          height: 100.0,
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Non Responsive Content',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}