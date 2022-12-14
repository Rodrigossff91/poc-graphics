// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<CharData> datas;

  @override
  void initState() {
    datas = [
      CharData(day: 16, price: 26000),
      CharData(day: 17, price: 25000),
      CharData(day: 18, price: 36000),
      CharData(day: 19, price: 56000),
      CharData(day: 20, price: 66000),
      CharData(day: 1, price: 86000),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData('Jan', 35),
      _SalesData('Feb', 28),
      _SalesData('Mar', 34),
      _SalesData('Apr', 32),
      _SalesData('May', 40)
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Center(
                child: SizedBox(
                    height: 400,
                    width: 400,
                    child: SfSparkLineChart(
                      //Enable the trackball
                      trackball: const SparkChartTrackball(
                          activationMode: SparkChartActivationMode.tap),
                      //Enable marker
                      marker: const SparkChartMarker(
                          displayMode: SparkChartMarkerDisplayMode.all),
                      //Enable data label
                      labelDisplayMode: SparkChartLabelDisplayMode.all,
                      data: const <double>[
                        1,
                        5,
                        -6,
                        0,
                        1,
                        -2,
                        7,
                        -7,
                        -4,
                        -10,
                        13,
                        -6,
                        7,
                        5,
                        11,
                        5,
                        3
                      ],
                    ))),
            SizedBox(child: SfCartesianChart()),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              child: SfSparkAreaChart(
                color: Colors.blue[200]!,
                data: const <double>[40, 24, 30, 14, 28],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              child: SfSparkLineChart.custom(
                color: Colors.blue,

                //Enable the trackball
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                //Enable marker
                marker: const SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.all),
                //Enable data label
                labelDisplayMode: SparkChartLabelDisplayMode.all,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                dataCount: 5,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(text: 'Half yearly sales analysis'),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[
                  LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      name: 'Sales',
                      // Enable data label
                      dataLabelSettings:
                          const DataLabelSettings(isVisible: true))
                ]),
            const SizedBox(
              height: 50,
            ),
            SfSparkLineChart.custom(
                axisCrossesAt: 20,
                color: Colors.green,
                dataCount: 5,
                xValueMapper: (int index) => data[index].year,
                yValueMapper: (int index) => data[index].sales,
                marker: const SparkChartMarker(
                    displayMode: SparkChartMarkerDisplayMode.last,
                    shape: SparkChartMarkerShape.square),
                trackball: const SparkChartTrackball(
                    activationMode: SparkChartActivationMode.tap),
                plotBand: const SparkChartPlotBand(start: 40, end: 40)),
            const SizedBox(
              height: 50,
            ),
            SfSparkAreaChart.custom(
              labelDisplayMode: SparkChartLabelDisplayMode.all,
              dataCount: 5,
              xValueMapper: (int index) => data[index].year,
              yValueMapper: (int index) => data[index].sales,
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                SfCartesianChart(
                  isTransposed: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 53, right: 20, left: 30),
                  child: SfSparkBarChart(
                    axisLineColor: Colors.transparent,
                    data: const <double>[10, 0, 8, 0, 5, 0, 6, 0, 10],
                    highPointColor: Colors.red,
                    lowPointColor: Colors.green,
                    firstPointColor: Colors.orange,
                    lastPointColor: Colors.orange,
                  ),
                ),
              ],
            ),
            Row(
              children: [Text('aaa')],
            ),
            const SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.5),
                        child: Container(
                          color: Colors.grey[200],
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.5),
                        child: Container(
                          color: Colors.grey[200],
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23, right: 0, left: 0),
                    child: SfSparkBarChart(
                      axisLineColor: Colors.transparent,
                      data: const <double>[13, 0, 8, 0, 2, 0, 6, 0, 10],
                      highPointColor: Colors.red,
                      firstPointColor: Colors.orange,
                      lastPointColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            )
            // Center(
            //   child: SfCartesianChart(
            //     margin: const EdgeInsets.all(0),
            //     backgroundColor: Colors.transparent,
            //     plotAreaBorderWidth: 0,
            //     primaryXAxis: NumericAxis(
            //         minimum: 17,
            //         maximum: 26,
            //         isVisible: false,
            //         interval: 1,
            //         borderWidth: 0,
            //         borderColor: Colors.transparent),
            //     primaryYAxis: NumericAxis(
            //         minimum: 19000,
            //         maximum: 23000,
            //         isVisible: false,
            //         borderWidth: 0,
            //         borderColor: Colors.transparent),
            //     series: <ChartSeries<CharData, int>>[
            //       SplineAreaSeries(
            //           splineType: SplineType.natural,
            //           dataSource: datas,
            //           xValueMapper: ((data, index) => data.day),
            //           yValueMapper: ((data, index) => data.price)),
            //       SplineSeries(
            //           color: Colors.black,
            //           dataSource: datas,
            //           xValueMapper: ((datum, index) => datum.day),
            //           yValueMapper: ((datum, index) => datum.price))
            //     ],
            //   ),
            // )
          ],
        ));
  }
}

class CharData {
  int day = 0;
  double price = 0;
  CharData({
    required this.day,
    required this.price,
  });
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
