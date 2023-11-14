import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:responsive_design_article/main.dart';

import 'screens/align_alignment.dart';
import 'screens/grid_gridview.dart';
import 'screens/image.dart';
import 'screens/layout.dart';
import 'screens/media_queries.dart';
import 'screens/orientation.dart';
import 'screens/row_column.dart';
import 'screens/spacer_sizedbox_padding.dart';
import 'screens/wrap.dart';

class AppRoutes {
  static const splash = '/';
  static const home = '/MyResponsiveWidget';
  static const alignAlinment = '/AlignAlinment';
  static const responsiveGridView = '/responsiveGridView';
  static const responsiveImage = '/ResponsiveImage';
  static const layoutWidget = '/LayoutWidget';
  static const mediaQueryWidget = '/MediaQueryWidget';
  static const orientationLandscapeProtrait = '/OrientationLandscapeProtrait';
  static const rowColumnWidget = '/RowColumnWidget';
  static const sizedBoxPaddingSpacerWidget = '/SizedBoxPaddingSpacerWidget';
  static const responsiveWrap = '/ResponsiveWrap';
  

  static Map<String, Widget Function(BuildContext)> current = {
    splash: (context) => list(context), 
    home:(p0) => const MyResponsiveWidget(),
    alignAlinment:(p0) => const AlignAlinment(),
    responsiveGridView:(p0) => const ResponsiveGridView(),
    responsiveImage:(p0) => const ResponsiveImage(),
    layoutWidget:(p0) => const LayoutWidget(),
    mediaQueryWidget:(p0) => const MediaQueryWidget(),
    orientationLandscapeProtrait:(p0) => const OrientationLandscapeProtrait(),
    rowColumnWidget:(p0) => const RowColumnWidget(),
    sizedBoxPaddingSpacerWidget:(p0) => const SizedBoxPaddingSpacerWidget(),
    responsiveWrap:(p0) =>  ResponsiveWrap(),

  };
  /// A sample widget that just shows the entire routes in the app
  static Widget list(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: current.keys
                .sorted()
                .map(
                  (key) => ListTile(
                    title: Text(key),
                    onTap: () => Navigator.pushNamed(context, key),
                  ),
                )
                .toList(),
          ),
        ),
      );

}