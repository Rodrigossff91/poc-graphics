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
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    datas = [
      CharData(day: 30, price: 0),
      CharData(day: 15, price: 15),
      CharData(day: 40, price: 40),
      CharData(day: 10, price: 10),
      CharData(day: 55, price: 10),
      CharData(day: 80, price: 80),
    ];

    super.initState();
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(2017, 5),
      SalesData(2018, 12),
      SalesData(2019, 24),
      SalesData(2020, 10),
      SalesData(2021, 20)
    ];
    return chartData;
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
          title: Text(''),
        ),
        body: ListView(
          children: [
            // Center(
            //     child: SizedBox(
            //         height: 400,
            //         width: 400,
            //         child: SfSparkLineChart(
            //           //Enable the trackball
            //           trackball: const SparkChartTrackball(
            //               activationMode: SparkChartActivationMode.tap),
            //           //Enable marker
            //           marker: const SparkChartMarker(
            //               displayMode: SparkChartMarkerDisplayMode.all),
            //           //Enable data label
            //           labelDisplayMode: SparkChartLabelDisplayMode.all,
            //           data: const <double>[
            //             1,
            //             5,
            //             -6,
            //             0,
            //             1,
            //             -2,
            //             7,
            //             -7,
            //             -4,
            //             -10,
            //             13,
            //             -6,
            //             7,
            //             5,
            //             11,
            //             5,
            //             3
            //           ],
            //         ))),
            //   SizedBox(child: SfCartesianChart()),
            // const SizedBox(
            //   height: 50,
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
            // SizedBox(
            //   child: SfSparkAreaChart(
            //     borderColor: Colors.black,
            //     color: Colors.blue[200]!,
            //     data: const <double>[40, 24, 30, 14, 28],
            //   ),
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
            // SizedBox(
            //   child: SfSparkLineChart.custom(
            //     color: Colors.blue,

            //     //Enable the trackball
            //     trackball: const SparkChartTrackball(
            //         activationMode: SparkChartActivationMode.tap),
            //     //Enable marker
            //     marker: const SparkChartMarker(
            //         displayMode: SparkChartMarkerDisplayMode.all),
            //     //Enable data label
            //     labelDisplayMode: SparkChartLabelDisplayMode.all,
            //     xValueMapper: (int index) => data[index].year,
            //     yValueMapper: (int index) => data[index].sales,
            //     dataCount: 5,
            //   ),
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
            // SfCartesianChart(
            //     primaryXAxis: CategoryAxis(),
            //     // Chart title
            //     title: ChartTitle(text: 'Half yearly sales analysis'),
            //     // Enable legend
            //     legend: Legend(isVisible: true),
            //     // Enable tooltip
            //     tooltipBehavior: TooltipBehavior(enable: true),
            //     series: <ChartSeries<_SalesData, String>>[
            //       LineSeries<_SalesData, String>(
            //           dataSource: data,
            //           xValueMapper: (_SalesData sales, _) => sales.year,
            //           yValueMapper: (_SalesData sales, _) => sales.sales,
            //           name: 'Sales',
            //           // Enable data label
            //           dataLabelSettings:
            //               const DataLabelSettings(isVisible: true))
            //     ]),
            // const SizedBox(
            //   height: 50,
            // ),
            // SfSparkLineChart.custom(
            //     axisCrossesAt: 20,
            //     color: Colors.green,
            //     dataCount: 5,
            //     xValueMapper: (int index) => data[index].year,
            //     yValueMapper: (int index) => data[index].sales,
            //     marker: const SparkChartMarker(
            //         displayMode: SparkChartMarkerDisplayMode.last,
            //         shape: SparkChartMarkerShape.square),
            //     trackball: const SparkChartTrackball(
            //         activationMode: SparkChartActivationMode.tap),
            //     plotBand: const SparkChartPlotBand(start: 40, end: 40)),
            // const SizedBox(
            //   height: 50,
            // ),
            // SfSparkAreaChart.custom(
            //   labelDisplayMode: SparkChartLabelDisplayMode.all,
            //   dataCount: 5,
            //   xValueMapper: (int index) => data[index].year,
            //   yValueMapper: (int index) => data[index].sales,
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
            // Stack(
            //   children: [
            //     SfCartesianChart(
            //       isTransposed: true,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 53, right: 20, left: 30),
            //       child: SfSparkBarChart(
            //         axisLineColor: Colors.transparent,
            //         data: const <double>[10, 0, 8, 0, 5, 0, 6, 0, 10],
            //         highPointColor: Colors.red,
            //         lowPointColor: Colors.green,
            //         firstPointColor: Colors.orange,
            //         lastPointColor: Colors.orange,
            //       ),
            //     ),
            //   ],
            // ),

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
            ),
            const SizedBox(
              height: 20,
            ),
            barraDeRisco,
            SfCartesianChart(
              legend: Legend(isVisible: false),
              tooltipBehavior: _tooltipBehavior,
              series: <SplineAreaSeries>[
                SplineAreaSeries<SalesData, double>(
                    name: 'Sales',
                    dataSource: _chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                    dataLabelSettings: DataLabelSettings(isVisible: false),
                    enableTooltip: true,
                    color: Colors.blue[50],
                    borderWidth: 3,
                    borderColor: Colors.blue,
                    opacity: 1,
                    splineType: SplineType.natural,
                    cardinalSplineTension: 0.2)
              ],
            ),
          ],
        ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}

class CharData {
  double day = 0;
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

Widget get barraDeRisco => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: 90,
        height: 20,
        child: Row(
          children: [
            Container(
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.green,
                        Colors.green,
                        Colors.orange[400]!,
                        Colors.orange[400]!,
                        Colors.red,
                        Colors.red,
                      ],
                    ))),
            Container(
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.red,
                        Colors.red,
                        Colors.orange[400]!,
                        Colors.orange[400]!,
                        Colors.green,
                        Colors.green,
                      ],
                    ))),
          ],
        ),
      ),
    );
