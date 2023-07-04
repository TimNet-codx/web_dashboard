import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:charts_flutter_new/flutter.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/bar_chart.dart';

class SimpleBarChart extends StatelessWidget {
  //final List<charts.Series> seriesList;
// final List<Series<dynamic, dynamic>> seriesList;
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  SimpleBarChart(this.seriesList, {required this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('Today', 5),
      OrdinalSales('Yesterday', 25),
      OrdinalSales('2 days', 100),
      OrdinalSales('24 Jun', 75),
      OrdinalSales('23 Jun', 38),
      OrdinalSales('22 Jun', 87),
      OrdinalSales('21 Jun', 60),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
