

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatusCharts extends StatelessWidget {
  const StatusCharts({Key key}) : super(key: key);

  static List<charts.Series<GaugeSegment, String>> _createSampleData() {
    final data = [
      new GaugeSegment('Low', 75),
      new GaugeSegment('Acceptable', 100),
      new GaugeSegment('High', 50),
      new GaugeSegment('Highly Unusual', 5),
    ];

    return [
      new charts.Series<GaugeSegment, String>(
        id: 'Segments',
        domainFn: (GaugeSegment segment, _) => segment.segment,
        measureFn: (GaugeSegment segment, _) => segment.size,
        data: data,
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      _createSampleData(),
      animate: true,
      defaultRenderer: new charts.ArcRendererConfig(
            arcWidth: 30, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi));
  }
}
class GaugeSegment {
  final String segment;
  final int size;

  GaugeSegment(this.segment, this.size);
}