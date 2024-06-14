/// Dart imports
import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

/// Local imports

/// Renders the realtime line chart sample.

class LiveLineChart extends StatefulWidget {
  /// Creates the realtime line chart sample.
  const LiveLineChart({super.key});

  @override
  State<LiveLineChart> createState() => _LiveLineChartState();
}

/// State class of the realtime line chart.
class _LiveLineChartState extends State<LiveLineChart> {
  _LiveLineChartState() {
    timer =
        Timer.periodic(const Duration(milliseconds: 500), _updateDataSource);
  }

  Timer? timer;
  List<_ChartData>? chartData;
  late int count;
  ChartSeriesController<_ChartData, int>? _chartSeriesController;

  @override
  void dispose() {
    timer?.cancel();
    chartData!.clear();
    _chartSeriesController = null;
    super.dispose();
  }

  @override
  void initState() {
    count = 0;
    chartData = <_ChartData>[
      _ChartData(0, 42),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildLiveLineChart();
  }

  /// Returns the realtime Cartesian line chart.
  Widget _buildLiveLineChart() {
    return SizedBox(
      height: 200,
      child: SfCartesianChart(
          plotAreaBorderWidth: 1,
          plotAreaBorderColor: Colors.transparent,
          borderColor: Colors.transparent,

          primaryXAxis:
          const NumericAxis(majorGridLines: MajorGridLines(width: 0)),
          primaryYAxis: const NumericAxis(
              axisLine: AxisLine(width: 0),
              majorTickLines: MajorTickLines(size: 0)),
          series: <LineSeries<_ChartData, int>>[
            LineSeries<_ChartData, int>(
              onRendererCreated:
                  (ChartSeriesController<_ChartData, int> controller) {
                _chartSeriesController = controller;
              },
              dataSource: chartData,
              color: const Color(0xffC2DEFF),
              xValueMapper: (_ChartData sales, _) => sales.country,
              yValueMapper: (_ChartData sales, _) => sales.sales,
              animationDuration: 500,
            )
          ]),
    );
  }

  ///Continuously updating the data source based on timer
  void _updateDataSource(Timer timer) {
    chartData!.add(_ChartData(count, _getRandomInt(10, 100)));
    if (chartData!.length == 20) {
      chartData!.removeAt(0);
      _chartSeriesController?.updateDataSource(
        addedDataIndexes: <int>[chartData!.length - 1],
        removedDataIndexes: <int>[0],
      );
    } else {
      _chartSeriesController?.updateDataSource(
        addedDataIndexes: <int>[chartData!.length - 1],
      );
    }
    count = count + 1;
  }

  ///Get the random data
  int _getRandomInt(int min, int max) {
    final math.Random random = math.Random();
    return min + random.nextInt(max - min);
  }
}

/// Private class for storing the chart series data points.
class _ChartData {
  _ChartData(this.country, this.sales);
  final int country;
  final num sales;
}
